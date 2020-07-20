New-SelfSignedCertificate -Type CodeSigningCert  -Subject "CN=PowerShell Local Certificate Root" -TextExtension @("2.5.29.37={text}1.3.6.1.5.5.7.3.3") -KeyUsageProperty Sign

# Now move the certificate from LocalMachine\Personal to the LocalMachine\Trusted Root Certification Authority

$cert = Get-ChildItem -Path Cert:\LocalMachine\Root -CodeSigningCert

Set-AuthenticodeSignature -FilePath \Path\Az.Token.psm1 -Certificate $cert


