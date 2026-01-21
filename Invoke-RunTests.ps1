$ErrorActionPreference = "Stop"

Install-Module -Name Pester -RequiredVersion 5.7.1 -Force
Import-Module -Name Pester -RequiredVersion 5.7.1 -Force

$testCases = Get-Content "./test-cases.json" | ConvertFrom-Json -AsHashtable
$testData = $testCases.Item("Data")

# Note that test files have to conform with the file name pattern *.Tests.ps1 otherwise Pester will throw "System.Management.Automation.RuntimeException: No test files were found and no scriptblocks were provided."
$container = New-PesterContainer -Path './Test-IsUppercase.Tests.ps1' -Data @{ TestData = $testData }
Invoke-Pester -Container $container -Output Detailed
