# Working with Azure Artifacts

- https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/Instructions/Labs/AZ400_M07_L13_Package_Management_with_Azure_Artifacts.html

- Lab:
    - Create and connect to a feed.
    - Create and publish a NuGet package.
    - Import a NuGet package.
    - Update a NuGet package.

- Source of the created feed 
  - https://pkgs.dev.azure.com/zboukhris/_packaging/zboukhris/nuget/v3/index.json

- dotnet pack .\eShopOnWeb.Shared.csproj
  - Note: The dotnet pack command builds the project and creates a NuGet 
    package in the bin\Release folder. If you don’t have a Release folder
    you can use the Debug folder instead.


- Need to use The Azure Artifacts Credential Provider 
  automates the acquisition of credentials needed to restore NuGet packages as part of your .NET development workflow. It integrates with MSBuild, dotnet, and NuGet(.exe) and works on Windows, Mac, and Linux. Any time you want to use packages from an Azure Artifacts feed, the Credential Provider will automatically acquire and securely store a token on behalf of the NuGet client you're using.

- Check some additional examples