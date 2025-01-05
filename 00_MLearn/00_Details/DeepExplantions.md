# CI/CD containers: WHY do we have the role assignment task seprated than the Web app creation step


You’re absolutely on the right track, and the ambiguity around timing can be confusing. In practice, the behavior of when the WebApp actually pulls the image can depend on how App Service processes the container setup. Here’s a more precise breakdown of what’s likely happening behind the scenes:

App Service Behavior:

When a WebApp is created with a container image, App Service does not always initiate an immediate pull from the registry. Often, the image pull happens upon the WebApp's first actual use (such as when receiving a request) or upon restart. This delay is why the deployment can succeed initially, even if the role assignment hasn't fully propagated.
“Cold Start” Scenario:

During the first “cold start” (the initial time the WebApp needs to run the container), App Service attempts to pull the image from the registry.
By this point, if the role assignment has had time to propagate, the WebApp will have the necessary permissions to pull the image, making the separate deployment step effective.
Just-in-Time Role Assignment:

Microsoft’s recommendation to separate the role assignment into a second template is designed to account for propagation delay while still allowing the WebApp to be created without immediately failing.
In other words, the WebApp is set up to be “container-ready” with the identity configured but won’t actively pull the image until it’s required, giving Azure enough time to propagate the AcrPull role.
Summarizing the Flow
First Template (webapp-docker.bicep):

Creates the WebApp with its managed identity and container configuration, but doesn’t yet pull the image.
Second Template (webapp-to-acr-roleassignment.bicep):

Assigns the necessary role to ensure the WebApp has permission to pull the image when needed.
Initial Image Pull:

The WebApp will pull the image when it’s first started, restarted, or upon the first request, by which time the role assignment is in effect.
This approach leverages the managed identity setup and propagation timing to ensure the WebApp can access ACR without blocking the initial deployment process.


# Approval strategy breakdown

In this YAML file, the waiting step (approval) is not directly expressed in the YAML code itself. Instead, the waiting step is configured in the Azure DevOps environment that you reference in the environment field.

Here’s how it works:

Environment with Approvals:

The environment: approvals line specifies the environment to which this deployment job will deploy.
In Azure DevOps, you can configure this environment to require approvals or checks before any deployment to it occurs.
Configuring Approvals in the Azure DevOps Environment:

Go to Pipelines > Environments in Azure DevOps.
Select or create an environment (in this case, named approvals).
In the environment’s settings, you can configure approvals and checks.
Set up Approvers (users or groups) who need to approve the deployment.
Add checks or other conditions that must be met for deployment to proceed.
How the Pipeline Waits for Approval:

When the pipeline reaches the deployment job with environment: approvals, Azure DevOps will automatically check the environment’s settings.
If approvals are configured, the pipeline will pause and wait for the specified approvals.
Only after the required approvals are given will the pipeline continue to execute the steps under deploy.