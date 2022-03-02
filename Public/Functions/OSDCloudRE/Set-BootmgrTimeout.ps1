function Set-BootmgrTimeout {
    <#
    .SYNOPSIS
    BCD: Sets the Bootmgr Timeout in seconds

    .DESCRIPTION
    BCD: Sets the Bootmgr Timeout in seconds

    .EXAMPLE
    Set-BootmgrTimeout -Timeout 10

    .LINK
    https://github.com/OSDeploy/OSD/tree/master/docs
    #>
    
    [CmdletBinding()]
    [OutputType([System.Void])]
    param (
        # Timeout value in seconds
        [Parameter(Position = 0, Mandatory = $True)]
        [uint32]
        $Timeout
    )

    Block-StandardUser
    $null = bcdedit /set '{bootmgr}' timeout $Timeout
}