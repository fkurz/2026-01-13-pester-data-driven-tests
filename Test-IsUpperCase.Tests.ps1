param(
    [Parameter(Mandatory = $True)]
    [hashtable[]]$TestData
)

BeforeAll {
    Import-Module ./StringFunctions.psm1 -Force -Function Test-IsUppercase -Verbose
}

Describe "Data-driven tests" {
    It "Returns <Expected> for input `"<Value>`"." -ForEach $TestData {
        Test-IsUppercase -TheString "$Value" | Should -Be $Expected
    }
}
