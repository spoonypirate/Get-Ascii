#ascii faces
# to get codes: [int[]][char[]]'ಠ_ಠ' -join ', '
# to copy to clip: [char[]]@(3232,95,3232) -join ''
function Get-Ascii {
    [cmdletbinding()]
    param (
        [Parameter(Mandatory=$true)]
        [ValidateSet(
        'Shrug',
        'ConfusedShrug',
        'Disapproval',
        'TableFlip',
        'TableBack',
        'TableFlip2',
        'TableBack2',
        'TableFlip3',
        'Denko',
        'BlowKiss',
        'Lenny',
        'Angry',
        'DontKnow',
        'Happy',
        'Distaste',
        'ThatsGood',
        'ThatsBad',
        'HappyStroll',
        'Anger',
        'Tears')]
        [string]
        $Name
     )
     $OutputEncoding = [System.Text.Encoding]::unicode
     function Write-Ascii {
        [CmdletBinding()]
        Param (
            # Ascii Data
            [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true,Position=0)]
            [string]
            $Ascii
        )

        # Clips it without the newline
        Add-Type -Assembly PresentationCore
        $clipText = ($Ascii).ToString() | Out-String -Stream
        [Windows.Clipboard]::SetText($clipText)
     }
     Switch ($Name) {
       'Shrug'        { [char[]]@(175,92,95,40,12484,41,95,47,175) -join '' | Write-Ascii }
       'ConfusedShrug' {[char[]]@(175,92,40,176,95,111,41,47,175) -join '' | Write-Ascii}
       'Disapproval'  { [char[]]@(3232,95,3232) -join '' | Write-Ascii }
       'TableFlip'    { [char[]]@(40,9583,176,9633,176,65289,9583,65077,32,9531,9473,9531,41) -join '' | Write-Ascii }
       'TableBack'    { [char[]]@(9516,9472,9472,9516,32,175,92,95,40,12484,41) -join '' | Write-Ascii }
       'TableFlip2'   { [char[]]@(9531,9473,9531,32,65077,12541,40,96,1044,180,41,65417,65077,32,9531,9473,9531) -join '' | Write-Ascii }
       'TableBack2'   { [char[]]@(9516,9472,9516,12494,40,32,186,32,95,32,186,12494,41) -join '' | Write-Ascii }
       'TableFlip3'   { [char[]]@(40,12494,3232,30410,3232,41,12494,24417,9531,9473,9531) -join '' | Write-Ascii }
       'Denko'        { [char[]]@(40,180,65381,969,65381,96,41) -join '' | Write-Ascii }
       'BlowKiss'     { [char[]]@(40,42,94,51,94,41,47,126,9734) -join '' | Write-Ascii }
       'Lenny'        { [char[]]@(40,32,865,176,32,860,662,32,865,176,41) -join '' | Write-Ascii }
       'Angry'        { [char[]]@(40,65283,65439,1044,65439,41) -join '' | Write-Ascii }
       'DontKnow'     { [char[]]@(9488,40,39,65374,39,65307,41,9484) -join '' | Write-Ascii }
       'Happy'        { [char[]]@(12541,40,180,9661,96,41,47) -join '' | Write-Ascii }
       'Distaste'     { [char[]]@(40,9580,32,3232,30410,3232,41) -join '' | Write-Ascii }
       'ThatsGood'    { [char[]]@(40,65283,65439,1044,65439,41) -join '' | Write-Ascii }
       'ThatsBad'     { [char[]]@(65288,12539,65313,12539,65289) -join '' | Write-Ascii }
       'HappyStroll'  { [char[]]@(5461,40,32,5147,32,41,5463) -join '' | Write-Ascii }
       'Anger'        { [char[]]@(4314,40,3232,30410,3232,41,4314) -join '' | Write-Ascii }
       'Tears'        { [char[]]@(3900,32,3854,3766,32,3572,32,3854,3766,3901) -join '' | Write-Ascii }
       #'NAME'         { [char[]]@() -join '' | Write-Ascii }
     }
  }

#endregion
