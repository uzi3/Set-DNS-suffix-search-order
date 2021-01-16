$Machines=Get-Content D:\MachineList.txt
foreach ($i in $Machines)
{
 Invoke-CimMethod -ClassName win32_networkadapterconfiguration -MethodName "SetDNSSuffixSearchOrder" -Arguments @{DNSDomainSuffixSearchOrder="sales.contoso.com", "contoso.com", "support.contoso.com", "marketing.contoso.com"}
}