# Install IIS.
# DISM :: Deployment Image Servicing and Management - a command line tool that is used to service Windowds images.

dism /online /enable-feature /featurename:IIS-WebServerRole

# Set the home page.
Set-Content `
  -Path "C:\\inetpub\\wwwroot\\Default.htm" `
  -Value "<html><body><h2>Welcome to Azure! My system name is $($env:computername).</h2></body></html>"