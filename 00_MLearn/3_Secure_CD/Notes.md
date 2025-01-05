## Canary deployment, A/B testing and Blue green

- Needs an example or a sample to be able to check 


## Integrate Azure Key Vault with Azure DevOps

- **Objectives**
  - Create an Azure Key vault to store an ACR password as a secret.
  - Create a Service Principal to access Azure Key Vault's secrets.
  - Configure permissions to allow the Service Principal to read the secret.
  - Configure the pipeline to retrieve the password from 
    the Azure Key Vault and pass it on to subsequent tasks.

- !! You need to summary the part about *CI/CD containers* and document well your 
  findings. This Lab was very interesting 

- More on what is specific about keyvaults

- With all the problems encountered :
  Run the following command to create or update the service principal with Contributor access at the subscription level:
  az ad sp create-for-rbac --name terraform_tr_Az400 --role contributor  --scopes /subscriptions/fbecb028-2ef6-422c-acb8-06d3fe64064f


- After this task two azure container registries are created . And the idea is to use keyvaults to interact with them .

- Keyvault created: ewebshop-kv-Z400

- You need to secure access to your key vaults by allowing only authorized applications and users. 
  To access the data from the vault, you will need to provide read (Get/List) permissions to the previously 
  created service principal that you will be using for authentication in the pipeline.
  => For this part I think my access at subscription level will work . I will not need to define
     another service principal access with Get/List access .
     - acr password: 88bmptxbiPbfqw2WXuKhehKFE2FNANPgPGiHhgB82D+ACRCC5EUn

- You will create a Variable Group in Azure DevOps that will retrieve the ACR password secret 
  from Key Vault using the Service Connection created previously.

- Something happended here : 
  - Once I needed to create the keyvault access it was not possible telling me that the service connection used 
    should have Get/List permissions to the keyvault .
  - The issue was solved by using terraform_tr_Az400 as a keyvault admin at key vault access control level .
  - If now I create a service connection using a service principal to have access to a resource group, it's also 
    possible to reuse the same service principal an give it access to the keyvault as 'Keyvault' admin .


- Now we will import a CD pipeline, customize it, and run it for deploying the container image 
  created before in a Azure Container Instance => We will use *eshoponweb-cd-aci.yml*

- It works : review and summary
  - So basically in this Lab we have 2 steps 
    - One that create the ACR (Using docker compose) ans push the images
    - Once those images and ACR is created we will need to have access to it
    - To access to this ACR we will use : username/password
    - the password will be storad in a keyvault
    - We will declare a variable group to access the keyvault (And avoid putting the scecret directly somewhere)
    - Other benefits are gained by using the keyvault: encryption (To check)
    - Now the problem is how to give access to this keyvault from devops variables groups
       - Here we will use the same service principal that have access to the pipeline (Service connection) 
         and give Get/List permissions (or use keyvaultadministrator as a role) 
    - Once the keyvault is accessed we create the azure container Instance using access to the ACR .



## Enable Dynamic Configuration and Feature Flags

- Endpoint of the azure configuration service :
  https://appcs-az-400-config.azconfig.io

- Enable Managed Identity
    - Go to the Web App deployed using the pipeline (it should be named az400-webapp-NAME).
    - In the Settings section, click on Identity then switch status to On in the System Assigned section, click save > yes and wait a few seconds for the operation to finish.
    - Go back to the App Configuration service and click on Access control then Add role assignment.
    - In the Role section, select App Configuration Data Reader.
    - In the Members section, check Manage Identity then select the managed identity of your Web App (they should have the same name).
    - Click on Review and assign.

- Check the app config and feature flags

- If you use app configuration service you can act on data live . You change the value
  on the app configuration and you will be able to see the impact .


