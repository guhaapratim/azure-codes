Configuration WindowsWebServer
{
  Node 'localhost'
      {
        # Install IIS - Enabled via Windows Feature
        WindowsFeature IIS
         {
            Ensure = "Present"
            Name = "Web-Server"
            IncludeAllSubFeature = $true	
          }
        # Create the DefaultDocument
        File DefaultDocument
         {
	    Ensure = "Present"
            Type = "File"
	    DestinationPath = "C:\Inetpub\wwwroot\index.html"
	    Contents = "Hello World !! from Windows Web Server"
          }
      }
} 