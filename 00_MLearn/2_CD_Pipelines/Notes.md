# AZ-400: Design and implement a release strategy

- RESOURCEGROUPNAME='az400m03l07-RG'
  az group create --name $RESOURCEGROUPNAME --location 'eastus'


- $SERVICEPLANNAME='az400m03l07-sp1'
  az appservice plan create --resource-group $RESOURCEGROUPNAME --name $SERVICEPLANNAME --sku B3


- WEBAPPNAME=eshoponWebYAML$RANDOM$RANDOM
  az webapp create --resource-group $RESOURCEGROUPNAME --plan $SERVICEPLANNAME --name $WEBAPPNAME

- Reuse the servicePrincipal
  az ad sp create-for-rbac --name terraform_tr_Az400 --role contributor --scope /subscriptions/fbecb028-2ef6-422c-acb8-06d3fe64064f/resourceGroups/az400m03l07-RG
  This command once run on the bash will generate : clientId, clientSecret and tenantId necessary to authorize 
  using a specific service principal .

  We can as well generate the sevrvice principal details using 
  az ad sp list --display-name terraform_tr_Az400 > This will not provide authorization
  information.

  - az ad sp list --display-name "terraform_tr_Az400" --query "[].id" -o tsv
    > Will generate the id that is necessary to reset the client secret information
  - We can check this later , as I will need to reset the  service principal credentials which is used 
    on many pipelines .


- Implements approvals
  - Create environnement approvals to reuse 
  - The deployment keyword is used to define a deployment job within a stage.
  - Deployment jobs are specialized for deployments and provide specific options such as environment, 
    strategy, and support for approvals

  - The strategy keyword defines the deployment strategy for this job.
    - Strategies specify how deployments are executed, and Azure DevOps provides several options:
    - runOnce: Deploys the job once without retries or rollbacks.
    - rolling: Deploys the job in batches.

- For details check **Approval strategy breakdown**


# Explore release recommendations

## Lab : Control Deployments using Release Gates

- Objectives
  - Configure release pipelines.
  - Configure release gates.
  - Test release gates.
  
- Necessary informations
  - REGION='centralus'
  - RESOURCEGROUPNAME='az400m03l08-RG'
  - az group create -n $RESOURCEGROUPNAME -l $REGION
  - SERVICEPLANNAME='az400m03l08-sp1'
  - az appservice plan create -g $RESOURCEGROUPNAME -n $SERVICEPLANNAME --sku S1
  - SUFFIX=AZS400
  - az webapp create -g $RESOURCEGROUPNAME -p $SERVICEPLANNAME -n RGATES$SUFFIX-DevTest
  - az webapp create -g $RESOURCEGROUPNAME -p $SERVICEPLANNAME -n RGATES$SUFFIX-Prod


- The idea is 
  - Create an application insight resource and link to the created webapp
  - Configure a rule: Failed requests count (As warning) > 0

- In order to create the cd pipeline a reccurent issue will be present which is giving access to the azure DevOps
  to connect to the newly created Apps: DevTest and production .
  Let us create a new service connection using terraform service principal to connect to the new resource group (az400m03l08-RG)
  **az ad sp create-for-rbac --name terraform_tr_Az400 --role contributor --scope /subscriptions/fbecb028-2ef6-422c-acb8-06d3fe64064f/resourceGroups/az400m03l08-RG**

- In azure devops always using a service principal authorization instead of 'authorize' that is not able to create
  an application object and do the authorization automatically . Using manual service principal authorization is a good 
  alternative .

- Note: Since there is an alert triggered by the exception, Query Azure Monitor gate will fail. 
  This, in turn, will prevent deployment to the Production environment.

- Recheck the module and summary
  - Check more about 'Application Insights' resource