function Get-RDPUsers {
<# 
 .Synopsis
    Get active users which are on the RDP server.

 .Description
    This function gets the exceptions from the TMG server.
  
 .Parameter ComputerName
    Contains Server name to connect to.

 .Outputs
    Active users
    
 .Notes
    None
    
  .Example

    C:\> Get-RDPUsers -ComputerName rdp.contoso.local

#>
[CmdletBinding()]
param([parameter(Mandatory=$false)][string[]]$ComputerName="localhost")
    ForEach ($i in $ComputerName)
    {
        $output = qwinsta /Server:$i | 
        ForEach-Object {
            $_.Trim() -replace "\s+",","
        } | ConvertFrom-CSV 
        $output | Add-Member @{ COMPUTERNAME = $i }
        $output
    }
}
