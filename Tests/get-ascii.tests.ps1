Import-Module -Force $PSScriptRoot\..\get-ascii.psm1

Describe 'Get-Ascii' {
    Context 'no parameter is provided' {
        It 'prompts for a name' {
            Get-Ascii | Should Not BeNullorEmpty
        }
    }
    Context 'parameter is provided' {
        It 'returns the correct item' {
            Get-Ascii -Name Shrug | Should Be '¯\_(ツ)_/¯'
        }
    }
}