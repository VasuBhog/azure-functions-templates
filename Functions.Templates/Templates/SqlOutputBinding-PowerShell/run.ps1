<#
Sample SQL Output Binding
See https://aka.ms/sqlbindingsinput for more information about using this binding
These tasks should be completed prior to running :
    1. Update "commandText" in function.json - this should be the name of the table that you wish to upsert values to
    2. Add an app setting named "SqlConnectionString" containing the connection string to use for the SQL connection
    3. Change the bundle name in host.json to "Microsoft.Azure.Functions.ExtensionBundle.Preview" and the version to "[4.*, 5.0.0)"
@param Request The HttpRequest that triggered this function
#>
using namespace System.Net

# Trigger binding data passed in via param block
param($Request)

# Write to the Azure Functions log stream.
Write-Host "PowerShell SQL Binding function processed a request."

# Update req_body with the body of the request
$req_body = @{'Insert Values Here'="Insert Value Here"} | ConvertTo-Json

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name results -Value $req_body