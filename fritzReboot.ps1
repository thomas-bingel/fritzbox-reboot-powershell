#PowerShell Scrpt to reboot a FritzBox
#Autor: Thomas Bingel <thomas.bingel@bingel-it.de>

$cred = Get-Credential

$headers = @{}
$headers.Add("Content-Type","text/xml; charset='utf-8'")
$headers.Add("SoapAction", "urn:dslforum-org:service:DeviceConfig:1#Reboot")

Invoke-WebRequest -Method Post -Uri http://fritz.box:49000/upnp/control/deviceconfig -Headers $headers -Credential $cred -Body "<?xml version='1.0' encoding='utf-8'?><s:Envelope s:encodingStyle='http://schemas.xmlsoap.org/soap/encoding/' xmlns:s='http://schemas.xmlsoap.org/soap/envelope/'><s:Body><u:Reboot xmlns:u='urn:dslforum-org:service:DeviceConfig:1'></u:Reboot></s:Body></s:Envelope>" 