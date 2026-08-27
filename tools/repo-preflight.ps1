[CmdletBinding()]
param(
    [string]$ExpectedBranch = 'main'
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-GitOutput {
    param(
        [Parameter(Mandatory)]
        [string[]]$Arguments
    )

    $output = & git @Arguments 2>&1

    if ($LASTEXITCODE -ne 0) {
        throw "git $($Arguments -join ' ') failed: $output"
    }

    return $output
}

try {
    $repoRoot = (
        Get-GitOutput -Arguments @(
            'rev-parse',
            '--show-toplevel'
        )
    ).Trim()

    Set-Location -LiteralPath $repoRoot

    $branch = (
        Get-GitOutput -Arguments @(
            'branch',
            '--show-current'
        )
    ).Trim()

    if ([string]::IsNullOrWhiteSpace($branch)) {
        $branch = 'DETACHED'
    }

    $localHead = (
        Get-GitOutput -Arguments @(
            'rev-parse',
            '--short=12',
            'HEAD'
        )
    ).Trim()

    $upstream = $null
    $upstreamHead = 'NONE'
    $ahead = 'UNKNOWN'
    $behind = 'UNKNOWN'

    $upstreamOutput = & git rev-parse `
        --abbrev-ref `
        --symbolic-full-name `
        '@{upstream}' 2>$null

    if ($LASTEXITCODE -eq 0) {
        $upstream = $upstreamOutput.Trim()

        $upstreamHead = (
            Get-GitOutput -Arguments @(
                'rev-parse',
                '--short=12',
                $upstream
            )
        ).Trim()

        $divergence = (
            Get-GitOutput -Arguments @(
                'rev-list',
                '--left-right',
                '--count',
                "$branch...$upstream"
            )
        ).Trim() -split '\s+'

        $ahead = $divergence[0]
        $behind = $divergence[1]
    }

    $statusLines = @(
        Get-GitOutput -Arguments @(
            'status',
            '--short'
        )
    )

    $experimentIds = @(
        Get-ChildItem `
            -LiteralPath (
                Join-Path $repoRoot 'experiments'
            ) `
            -Directory `
            -ErrorAction SilentlyContinue |
        Where-Object {
            $_.Name -match '^EXP-(\d{4})$'
        } |
        ForEach-Object {
            [int]$Matches[1]
        } |
        Sort-Object
    )

    if ($experimentIds.Count -eq 0) {
        $latestId = 'NONE'
        $nextNumber = 1
    } else {
        $latestNumber = $experimentIds[-1]
        $latestId = 'EXP-{0:D4}' -f $latestNumber
        $nextNumber = $latestNumber + 1
    }

    $nextId = 'EXP-{0:D4}' -f $nextNumber
    $nextPath = Join-Path `
        $repoRoot `
        "experiments\$nextId"

    $localTargetExists = Test-Path `
        -LiteralPath $nextPath

    $upstreamTargetExists = 'UNKNOWN'

    if ($null -ne $upstream) {
    $upstreamTarget = @(
        Get-GitOutput -Arguments @(
            'ls-tree',
            '--name-only',
            $upstream,
            '--',
            "experiments/$nextId"
        )
    )

    $upstreamTargetExists = (
        $upstreamTarget.Count -gt 0 -and
        -not [string]::IsNullOrWhiteSpace(
            $upstreamTarget[0]
        )
    )
}

    $result = 'PASS'
    $reasons = @()

    if ($branch -ne $ExpectedBranch) {
        $result = 'ATTENTION'
        $reasons += 'UNEXPECTED_BRANCH'
    }

    if (
        $ahead -ne 'UNKNOWN' -and
        (
            [int]$ahead -ne 0 -or
            [int]$behind -ne 0
        )
    ) {
        $result = 'ATTENTION'
        $reasons += 'UPSTREAM_DIVERGENCE'
    }

    if ($statusLines.Count -gt 0) {
        $result = 'ATTENTION'
        $reasons += 'WORKTREE_NOT_CLEAN'
    }

    if (
        $localTargetExists -eq $true -or
        $upstreamTargetExists -eq $true
    ) {
        $result = 'ATTENTION'
        $reasons += 'NEXT_ID_COLLISION'
    }

    if ($reasons.Count -eq 0) {
        $reasonText = 'NONE'
    } else {
        $reasonText = $reasons -join ','
    }

    Write-Output "REPOSITORY_ROOT=$repoRoot"
    Write-Output "CURRENT_BRANCH=$branch"
    Write-Output "EXPECTED_BRANCH=$ExpectedBranch"
    Write-Output "LOCAL_HEAD=$localHead"

    if ($null -eq $upstream) {
        Write-Output 'UPSTREAM=NONE'
    } else {
        Write-Output "UPSTREAM=$upstream"
    }

    Write-Output "UPSTREAM_HEAD=$upstreamHead"
    Write-Output "AHEAD=$ahead"
    Write-Output "BEHIND=$behind"
    Write-Output "WORKTREE_ENTRY_COUNT=$($statusLines.Count)"

    foreach ($line in $statusLines) {
        Write-Output "WORKTREE_ENTRY=$line"
    }

    Write-Output "LATEST_EXPERIMENT_ID=$latestId"
    Write-Output "NEXT_EXPERIMENT_ID=$nextId"
    Write-Output "NEXT_ID_EXISTS_LOCALLY=$localTargetExists"
    Write-Output "NEXT_ID_EXISTS_UPSTREAM=$upstreamTargetExists"
    Write-Output 'REMOTE_REFRESH_PERFORMED=false'
    Write-Output "PREFLIGHT_RESULT=$result"
    Write-Output "PREFLIGHT_REASONS=$reasonText"

    if ($result -eq 'PASS') {
        exit 0
    }

    exit 2
}
catch {
    Write-Error $_
    Write-Output 'PREFLIGHT_RESULT=ERROR'
    exit 1
}