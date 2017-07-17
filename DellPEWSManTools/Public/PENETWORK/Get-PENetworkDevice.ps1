<#
.SYNOPSIS
Short description

.DESCRIPTION
Long description

.PARAMETER iDRACSession
Parameter description

.EXAMPLE
An example

.NOTES
General notes
#>
function Get-PENetworkDevice
{
    [CmdletBinding()]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    Param
    (
        [Parameter(Mandatory)]
        [Alias("s")]
        [ValidateNotNullOrEmpty()] 
        $iDRACSession
    )
    Process 
    {
        Write-Verbose "Getting Network device Information for $($iDRACSession.ComputerName) ..."
        Get-CimInstance -ResourceUri 'http://schemas.dell.com/wbem/wscim/1/cim-schema/2/DCIM_NICView' -Namespace root\dcim -CimSession $iDRACSession
    }
}
