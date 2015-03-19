# PSRDP
Show users on RDP server.

## Installation
Clone this repository into the Powershell module directory. This directory can be obtained by typing $env:PSModulePath on the Powershell prompt.

## <a name="functions">Functions</a>
On the prompt you can use 'help <Function-Name>' to display the help.

Function-Name | Description
----|----
Get-RDPUsers -Server rdp1,rdp2 | Returns sessions on RDP server
