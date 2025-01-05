# Benefits of using infrastructe as code 

  - Creating your own infrastructe
  - Making changes
  - Replicating the same infra accross multiple environnements
  - Sometimes you might not document properly how you built your infrastructure .


# First arm template

-  If you need to deploy a specific resource you can simply go to the official 
   documentation and select the desired resource and then 

- In the context of Azure Resource Manager (ARM) templates, **sku** refers to the Stock Keeping Unit, 
  which is used to define the properties of a resource's pricing tier and capacity. The SKU element 
  is commonly found within the "properties" section of a resource definition in an ARM template.

- **"Microsoft.Resources/deployments"** This refers to the deployment of another ARM template within your main ARM template. This type is used when you want to create a nested deployment. Nested deployments allow you to modularize and reuse parts of your ARM templates, making it easier to manage and maintain complex infrastructures.

- You don't typically need to explicitly create a resource group using the Microsoft.Resources/resourceGroups 
  type because Azure automatically creates the resource group when you deploy resources.


# Azure virtual machine

- This is a quite heavy template to deploy . You have to check the documentation .


# Arms deployment modes

- Complete: The source template is what we will have on the resource group regardless of 
  what was defined before .

- Incremental: Nothing will be deleted . And resources will be updated .

- **Nested templates** will use **Microsoft.Resources/deployments** for template nesting .

- **linked templates** you will need to use a storage account and reference templates from it 
  on your main template .

# Again the steps used to deploy used arm templates
  - Create a pipeline to build the code and generate your artifacts
  - Link the artificat to a release pipeline
     - Go to release and then add artifcat and reference the desired pipeline .
  - Structure your pipeline to create the necessary elements
     - Arm templates
     - Sql database
     - The App service plan
     - The App service ...  


# Include the arm template on our artifact

- To deal with ARM templates we can use linked templates and put them on a container and then reference them .
- OR : we can build our project with the template inside it to pass it as an artificat .
  => GO to Template location and select : Linked Artifact
- IMPORTANT : Each time you publish an artificat using one of your pipelines you make it available to release pipelines using: $(System.DefaultWorkingDirectory)/**/*.zip .

# Dyamic resources creation

- We will try and create a template with a dynmic name for sql server instance and use it 
  afterwards .

- *uniqueString(resourceGroup().id)* function is used to generate a unique string based on the ID 
  of the resource group. This ensures that the resulting value, when concatenated with the string 'server', is unique 
  within the scope of the resource group.

- In order to create dynamic names using arm templates these are the steps
  - This is a good step on making the process more automated => No need to create app and server before running the pipelines
  
  - Using methods like 'uniqueString' to generate unique ids inside the same resource group
  - Passing parameters as outputs after creation => After the random generation in this way we are sure that
    they are passed to the next step .
  - The main template will as well output the sql server fully qualfied name for instance.
  - We will also need to use predifinded variables at pipeline level to ensure that the created resources names are passed => Set settable at release time
  - At pipeline level once we define our template creation task we need to define output variables that will already defined at template level : *'resourcedeployed'*
  - Add a powershell task to use the script file that will set predefined variables 
  - For the arguments you will need to pass: -ARMValues '$(resourcedeployed)' to the 
    powershell task created for this purpose .
  - You will as well need to reference your server and appname
     - $(sqlserverfqdn)
     - $(webappname)

  - Passing the output from arms to the powershell embeded script does not work
     - Problem 1: The output is not a string using a json format . So it was not possible to using it to extract 
       app and server names
     - Problem 2: Even after being able to parse the json output the embeded powershell script of the solution passed as an artifact
                  was detecting invalid charcters and was not able to parse app/server names
     - Solution add another 'powsershell' script step where we format the arm output first and exract the app/server variables .
     - The script is embeded on the project and will be executed with the pipeline .
     - The embeded script will not work . Not able to recognize the context in azure pipelines . Instead we need to add directly inside the release pipeline as powershell task .
    
     - The generated names will always depend on the resource group which is fine because
       you will have a fixed dynamic names for app/server but they will always be the same .
       So if you deploy you execute the release multiple times only the project artificat 
       will be changed as your using : Incremental mode for arm templates .

# Using terraform

- You can use it with other cloud providers
- First thing to do when starting to use terraform is to create an application object in order to secure the access 
  to your subscription .
  - The application object will ensure that without the client_id and client_secret your subscription is not accessible .
  - At subscription level you can use Role assignment to manage application object access .
  - Application object to use **terraform_tr_Az400**
    - **secret** : Rex8Q~ZHeprEhokYVpyRYdFpo.OVifyBvEVDQdhO
    - **id**     : f8e21f56-fc20-4d80-9c4a-210f704e54d1
  - At subscription level > Access control > Add role assignment > Contributor to terraform app object  
- Construct your terraform file and push it to your repository
- To be able to install extensions **like terraform** from the marketplace just make sure that you are connected 
- Azure service already exists - to be managed via Terraform this resource needs to be
  imported into the State. Please see the resource documentation for azure teraform
  service .


# Using One Yaml file to Build and deploy

- You can use the build template to also deploy the app
- You can simply take the steps from the release pipeline YAML defintion .
- Refer to **allInOneYamlFile.yml** that contains both a 'Build' and 'Deploy' stages .