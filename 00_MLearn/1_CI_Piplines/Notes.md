# Configure agent pools and understand pipeline styles

- Regardless of the choice of the pipeline style, to build your code or deploy your solution by using Azure Pipelines, 
  you need an agent. An agent hosts compute resources that run one job at a time. 
  Jobs can be run directly on the host machine of the agent or in a container. 
  You have an option to run your jobs using Microsoft-hosted agents, which are managed for you, 
  or implementing a self-hosted agent that you set up and manage on your own .

- PAT eShop : ssowtksy46evx2gfjbivmjctpkoa4vcd2oi5voxtbw7tiwuwodjq

- LET US USE a new VM in azure to use as an agent and redo the exercice
  - New windows vm cretaed 
    - az400agent
    - az400agent!212?
  - We will need to go and recreate agent pool configuration on 
    the newly created VM
  - Lab : https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/Instructions/Labs/AZ400_M02_L03_Configure_Agent_Pools_and_Understand_Pipeline_Styles.html
  - Command : 
     Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$HOME\Downloads\vsts-agent-win-x64-3.246.0", "$PWD")
  - Same PAT 
      - PAT eShop : ssowtksy46evx2gfjbivmjctpkoa4vcd2oi5voxtbw7tiwuwodjq
      - The PAT is used to allow access to your devops project
  - If the agent service is not running 
     - GO to agent foler and launch the run command as an administrator

- Conclusion
  - It's defnitly possible to create an agent inside and agent pool
  - The next step is to configure the pipeline to use the created agent to run to Build the app


# Pull Request validation process and enablr CI process

- How to configure a Pull request and policies 
  - https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/Instructions/Labs/AZ400_M02_L04_Enable_Continuous_Integration_with_Azure_Pipelines.html

- You can also enable the continous integration directly from from the pipeline 
  by specifying trigger to 'main' instead of 'none' .

- Recheck :Describe pipelines and concurency 
  - https://learn.microsoft.com/en-us/training/modules/describe-pipelines-concurrency/


# Using Github actions

- Steps link: https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/Instructions/Labs/AZ400_M02_L05_Implement_GitHub_Actions_for_CI_CD.html
- When using Actions to create CI or CD workflows, you'll often need to pass artifacts created by one job to another.
- The most common ways to do it are by using the upload-artifact and download-artifact actions.
- You can definitly use GitHub actions to deploy something on Azure App service
- Just make sure that you have created a service principal to allow the GitHub action to access your WebApp created in Azure 
- Alternative to the service principal: https://docs.github.com/fr/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-azure
- Run a command to 
    Create a Service Principal with Contributor access to the Resource Group created before. 
    This way we make sure GitHub Actions will only have the permissions needed to interact only with 
    this Resource Group (not the rest of the subscription)

    az ad sp create-for-rbac --name GH-Action-eshoponweb-2 --role contributor --scopes /subscriptions/fbecb028-2ef6-422c-acb8-06d3fe64064f/resourceGroups/rg-eshoponweb-NAME --sdk-auth

- Just resuse your already created terraform service principal
  az ad sp create-for-rbac --name terraform_tr_Az400 --role contributor --scopes /subscriptions/fbecb028-2ef6-422c-acb8-06d3fe64064f/resourceGroups/rg-eshoponweb-NAME --sdk-auth
  {
    "clientId": "a5f48996-9bf0-4d1f-8dd7-22ba0a6f11fe",
    "clientSecret": "hmX8Q~PyjVWJT69X-.sUNrfvqavy6pNy6rr2Ra-i",
    "subscriptionId": "fbecb028-2ef6-422c-acb8-06d3fe64064f",
    "tenantId": "20f62116-4d0c-44ac-8a45-390ca2765601",
    "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
    "resourceManagerEndpointUrl": "https://management.azure.com/",
    "activeDirectoryGraphResourceId": "https://graph.windows.net/",
    "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
    "galleryEndpointUrl": "https://gallery.azure.com/",
    "managementEndpointUrl": "https://management.core.windows.net/"
  }

- Uncomment the on section (delete “#”) - **on: [push, workflow_dispatch]**-. The workflow triggers with 
  every push to the main branch and also offers manual triggering (“workflow_dispatch”).


- The most important step using the service principal to login to Azure 
  #Login in your azure subscription using a service principal (credentials stored as GitHub Secret in repo)
    - **name**: Azure Login  
      **uses**: azure/login@v2  
      **with**:  
        **creds**: `${{ secrets.AZURE_CREDENTIALS }}`


- I's defintly possible on Github to add approves before deploying .
  Check section: Task 4: Add manual approval pre-deploy using GitHub Environments 

# Implement CI with Azure Pipelines and GitHub Actions

- The general steps described in the document are as below
  CI
    - Create the ACR 
    - Build the image 
    - Push the image to ACR
  CD
    - Create a WebApp based on the image
    - Add Role Assignment to the WebApp using Bicep
