# Bicep

- Azure Bicep is the next revision of ARM templates designed to solve some of the issues developers were facing when deploying their resources to Azure. It's an Open Source tool and, in fact, a domain-specific language (DSL) that provides a means to declaratively codify infrastructure, which describes the topology of cloud resources such as VMs, Web Apps, and networking interfaces. It also encourages code reuse and modularity in designing the infrastructure as code files.

- Compile a bicep file 
    **az bicep build -f ./main.bicep**


# Deployments using Azure Bicep templates

- A module could be used by bicep to reference a resource created on another file (Below using ./storage.bicep)
    ```bicep
    module storageModule './storage.bicep' = {
    name: 'linkedTemplate'
        params: {
            location: location
            storageAccountName: storageAccountName
        }
    }
    ```
- You can only use Incremental deployment mode when using template modules.

- Learned how to create an Azure Bicep template, modularize it by using a template module, modify the main deployment template to use the module and updated dependencies, and finally deploy the templates to Azure using YAML pipelines

