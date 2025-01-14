- It's recommended for this section to review 
https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/Instructions/Labs/AZ400_M01_L01_Agile_Plan_and_Portfolio_Management_with_Azure_Boards.html
- Check **00_MLearn/01_AzureBoards**
- https://www.youtube.com/watch?v=Omgr9EgkoA8
 


### **Question 1**

**You are configuring project metrics for dashboards in Azure DevOps. You need to configure a chart widget that measures the elapsed time to complete work items once they become active.**
  
Which of the following is the widget you should use
  
A. Cumulative Flow Diagram shows the number of work items in different states over time and can be used to monitor progress and identify bottlenecks, but it doesn't specifically measure elapsed time.

B. Burnup charts show the progress of completed work items over time and can be used to measure progress towards a goal, but it doesn't measure elapsed time once work items become active.

C. Burndown charts show the remaining work over time and can be used to measure progress towards completing a set of work items, but it doesn't measure elapsed time once work items become active.

D. **Correct** Cycle time, on the other hand, specifically measures the elapsed time from when a work item becomes active to when it is  completed, making it the best option to fulfill the requirement in the question.

E. Lead Time: The total time taken from the moment a request is made (e.g., a customer order, a task being added to the backlog) to the time it is delivered or completed.


### **Question 2**

You need to consider the underlined segment to establish whether it is accurate.
The Burnup widget measures the elapsed time from creation of work items to their completion.
Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

E. **Correct** Lead Time: The total time taken from the moment a request is made (e.g., a customer order, a task being added to the backlog) to the time it is delivered or completed.


### **Question 3**

You are making use of Azure DevOps manage build pipelines, and also deploy pipelines.
The development team is quite large, and is regularly added to.
You have been informed that the management of users and licenses must be automated when it can be.
Which of the following is a task that can't be automated?

A. Group membership changes
B. License assignment
C. Assigning entitlements
D. **Correct** *License procurement* : 
   License Procurement is a process which involves manual intervention. Rest all options can be dynamic.

### **Question 4**

You have been tasked with strengthening the security of your team's development process.
You need to suggest a security tool type for the Continuous Integration (CI) phase of the development process.
Which of the following is the option you would suggest?
A. Penetration testing
B. **Correct**: Static code analysis
C. Threat modeling
D. Dynamic code analysis

**Static code analysis**: You can analyse your source code without executing it(during CI phase), detect security weaknesses before integrate your code to the main source code.
**Penetration testing**: Typically performed after CI/CD processes, identify vulnerabilities and assess the security, simultating real-attacks
**Dynamic code analysis**: Unlike Static code analysis this evaluates the app during runtime (not during CI)
**Threat modeling**: Identifies potential threats and vulnerabilities for the app


### **Question 5**

Your company is currently making use of Team Foundation Server 2013 (TFS 2013), but intend to migrate to Azure DevOps.
You have been tasked with supplying a migration approach that allows for the preservation of Team Foundation Version Control changesets dates, as well as the changes dates of work items revisions. The approach should also allow for the migration of all TFS artifacts, while keeping migration effort to a minimum.
You have suggested upgrading TFS to the most recent RTW release.
Which of the following should also be suggested?
A. Installing the TFS kava SDK
B. **Correct**: Using the TFS Database Import Service to perform the upgrade ??
C. Upgrading PowerShell Core to the latest version.
D. Using the TFS Integration Platform to perform the upgrade.



### **Question 6**

You have an on-premises Bitbucket Server with a firewall configured to block inbound Internet traffic. The server is used for Git-based source control.
You intend to manage the build and release processes using Azure DevOps. This plan requires you to integrate Azure DevOps and Bitbucket.
Which of the following will allow for this integration? Answer by dragging the correct options from the list to the answer area

1- *Self-hosted agent*: This is a software application that you install on a machine within your network (not necessarily the Bitbucket server) to run jobs and tasks for your pipelines in Azure DevOps. It can be used with the External Git service connection to interact with your Bitbucket server without requiring inbound internet access.

2- *External Git service connection*: This is a configuration in Azure DevOps that allows it to connect to an external Git repository like your on-premises Bitbucket server. It can be used in conjunction with a self-hosted agent to access and interact with your Bitbucket repositories behind the firewall.


### **Question 7**

You are currently developing a project for a client that will be managing work items via Azure DevOps.
You want to make sure that the work item process you use for the client allows for **requirements**, change requests, **risks**, and reviews to be tracked.
Which of the following is the option you would choose?
A. Basic
B. Agile
C. Scrum
D. **Correct**: CMMI
CMMI stand for Capability Maturity Model Integration
The Capability Maturity Model Integration (CMMI) is a model that helps organizations to: Effectuate process improvement. Develop behaviors that decrease risks in service, product, and software development.


### **Question 8,9,10**

You run the Register-AzureRmAutomationDscNode command in your company's environment.
You need to make sure that your company's test servers remain correctly configured, regardless of configuration drift.
Solution: You set the -ConfigurationMode parameter to ApplyOnly.

Specifies the DSC configuration mode. Valid values are:

ApplyAndMonitor
ApplyAndAutocorrect
ApplyOnly

Answer is No; use **ApplyAndAutocorrect** for "correctly configured, regardless of configuration drift"


### **Question 11**

You need to consider the underlined segment to establish whether it is accurate.
To compile an Internet Information Services (IIS) web application that runs docker, you should use a Default build agent pool.
Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

A. No adjustment required.
B. Hosted Windows Container
C. Hosted
D. Hosted macOS

The question asks if you "should use a Default build agent pool", with the word "Default" highlighted. The word "Default" can be replaced with "Hosted", which gives us the answer C.

If the question asks for if you "should use a Default Build Agent Pool", the answer should be B (Hosted Windows Container)


### **Question 12**

Your company has an Azure DevOps environment that can only be accessed by Azure Active Directory users.
You are instructed to make sure that the Azure DevOps environment can only be accessed from devices connected to the company's on-premises network.
Which of the following actions should you take?

A. Assign the devices to a security group.
B. Create a GPO.
C. Configure Security in Project Settings from Azure DevOps.
D. **Correct**: Configure conditional access in Azure Active Directory.

Configure conditional access in Azure Active Directory: This is the correct option. Azure AD conditional access allows you to define granular access policies based on various factors, including the user's identity, device attributes (such as location), and other conditions. By creating a conditional access policy that requires devices to be connected to the company's on-premises network for accessing the Azure DevOps environment, you can achieve the desired location-based access control.

### **Question 13**

You are making use of Azure DevOps to configure Azure Pipelines for project, named PROJ-01.
You are preparing to use a version control system that allows for source code to be stored on a managed Windows server located on the company network.
Which of the following is the version control system you should use?

A. Github Enterprise 
B. Bitbucket cloud
C. Github Professional
D. **Correct**: Git in Azure Repos

The question specifies that the source code should be stored on a managed Windows server located on the company network. This aligns with Azure Repos, which supports both Git and Team Foundation Version Control (TFVC) for hosting repositories within an on-premises or Azure DevOps Services environment.

### **Question 14**

You need to consider the underlined segment to establish whether it is accurate.
When moving to Azure DevOps, JIRA must be replaced with the build pipelines Azure DevOps service.
Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

A. No adjustment required.
B. repos
C. release pipelines
D. **Correct**: Boards


### **Question 15**

You scan a Node.js application using WhiteSource Bolt.
The scan finds numerous libraries with invalid licenses, but are only used during development.
You have to make sure that only production dependencies are scanned by WhiteSource Bolt.
Which of the following is a command you should run?

A. npm edit
B. npm publish
C. npm install 
D. npm update

The npm install command will install the devDependencies along other dependencies when run inside a package directory, in a development environment (the default).

Use npm install --only=prod (or --only=production) to install only dependencies, and not devDependencies,regardless of the value of the NODE_ENV environment variable.

https://stackoverflow.com/questions/9268259/how-do-you-prevent-install-of-devdependencies-npm-modules-for-node-js-package


### **Question 16**

You are currently defining a release strategy for an app, named APP-01.
The strategy should allow you to keep the time it takes to deploy new releases of the app to a minimum. The strategy should also allow you to roll back in the shortest time required.
Which of the following is the release strategy you should use?

A. **Correct** Red/Black deployment (Deployment slots)
B. Rolling deployment
C. ג€Big Bangג€ deployment
D. Canary deployment

### **Question 17**

Your company hosts a web application in Azure, and makes use of Azure Pipelines for managing the build and release of the application.
When stakeholders report that system performance has been adversely affected by the most recent releases, you configure alerts in Azure Monitor.
You are informed that new releases must satisfy specified performance baseline conditions in the staging environment before they can be deployed to production.
You need to make sure that releases not satisfying the performance baseline are prevented from being deployed.
Which of the following actions should you take?

A. You should make use of a branch control check.
B. You should make use of an alert trigger.
C. **Correct** You should make use of a gate.
D. You should make use of an approval check.

### **Question 18**

You need to consider the underlined segment to establish whether it is accurate.
To deploy an application to a number of Azure virtual machines, you should create a universal group.
Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

A. No adjustment required.
B. security
C. **Correct** deployment 
D. resource

### **Question 19**

You are preparing to deploy an Azure resource group via Terraform.
To achieve your goal, you have to install the necessary frameworks.
Which of the following are the frameworks you should use? Answer by dragging the correct options from the list to the answer area.

`
You can use the combination of Terraform and Yeoman. Terraform is a tool for creating infrastructure on Azure. **Yeoman** makes it easy to create Terraform modules.
**Terratest** provides a collection of helper functions and patterns for common infrastructure testing tasks, like making HTTP requests and using SSH to access a specific virtual machine. The following list describes some of the major advantages of using Terratest:
✑ Convenient helpers to check infrastructure - This feature is useful when you want to verify your real infrastructure in the real environment.
✑ Organized folder structure - Your test cases are organized clearly and follow the standard Terraform module folder structure.
Test cases are written in Go - Many developers who use Terraform are Go developers. If you're a Go developer, you don't have to learn another programming
 language to use Terratest.`


### **Question 20**

You intend to make use of Azure Artifacts to share packages that you wrote, tested, validated, and deployed.
You want to use a solitary feed to release several builds of each package. You have to make sure that the release of packages that are in development is restricted.
Which of the following actions should you take?

A. You should make use of static code analysis.
B. **Correct** You should make use of views.
C. You should make use of dynamic code analysis.
D. You should make use of upstream sources.


### **Question 21**

You need to consider the underlined segment to establish whether it is accurate.
To find when common open source libraries are added to the code base, you should add Jenkins to the build pipeline.
Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

A. No adjustment required.
B. SourceGear Vault
C. **Correct** WhiteSource 
D. OWASP ZAP


### **Question 22**

Your company has an Azure DevOps project, which includes a build pipeline that makes use of roughly fifty open source libraries.
You have been tasked with making sure that you are able to scan project for common security weaknesses in the open source libraries.
Which of the following actions should you take?

A. **Correct** You should create a build task and use the WhiteSource Bolt service.
B. You should create a deployment task and use the WhiteSource Bolt service.
C. You should create a build task and use the Chef service.
D. You should create a deployment task and use the Chef service.


### **Question 23**

You need to consider the underlined segment to establish whether it is accurate.
*Black Duck* can be used to make sure that all the open source libraries conform to your company's licensing criteria.
Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

A. **Correct** No adjustment required. 
B. Maven
C. Bamboo
D. CMAKE


### **Question 24**

You have created an Azure DevOps project for a new application that will be deployed to a number of Windows Server 2016 Azure virtual machines.
You are preparing a deployment solution that allows for the virtual machines to maintain a uniform configuration, and also keep administrative effort with regards to configuring the virtual machines to a minimum.
Which of the following should be part of your solution? (Choose two.)

A. **Correct** Azure Resource Manager templates
B. **Correct** The PowerShell Desired State Configuration (DSC) extension for Windows
C. Azure pipeline deployment groups
D. The Custom Script Extension for Windows
E. Azure pipeline stage templates

Considering the requirements
- maintain a uniform configuration for virtual machines
- minimize administrative effort

I think correct answer is A & B.
To mantain the configuration status of a VM you must use DSC.
To minimize the effort of creating the VM you can use an ARM template so that you can reuse it for each VM. 
Deployment groups requires more effort.

### **Question 25**

Your company has an application that contains a number of Azure App Service web apps and Azure functions.
You would like to view recommendations with regards to the security of the web apps and functions. 
You plan to navigate to Compute and Apps to achieve your goal.

Which of the following should you access to make use of Compute and Apps?

A. Azure Log Analytics
B. Azure Event Hubs
C. Azure Advisor
D. **Correct** Azure Security Center 

- Notes: Azure Security Center and Azure Defender are now called Microsoft Defender for Cloud.

### **Question 26**

You need to consider the underlined segment to establish whether it is accurate.
Your company has a multi-tier application that has its front end hosted in Azure App Service.
To pinpoint the average load times of the application pages, you should make use of Azure Event Hubs.
Select `No adjustment required` if the underlined segment is accurate. If the underlined segment is inaccurate, select the accurate option.

A. No adjustment required.
B. **Correct**  Azure Application Insights 
C. Azure Log Analytics
D. Azure Advisor

### **Question 27, 28, 29**

Your company makes use of Azure SQL Database Intelligent Insights and Azure Application Insights for monitoring purposes.
You have been tasked with analyzing the monitoring using ad-hoc queries. You need to utilize the correct query language.
Solution: You use the Contextual Query Language (CQL).
Does the solution meet the goal?

A. Yes
B. **Correct** No


### **Question 30**

You have recently created a web application for your company.
You have been tasked with making sure that a summary of the exceptions that transpire in the application 
is automatically sent to Microsoft Teams on a daily basis.
Which of the following Azure services should you use? Answer by dragging the correct options from the list to the answer area.
 - Azure Logic Apps
 - Application insights

### **Question 31**

You are in the process of building a mobile app aimed at Android and iOS devices.
All work items and release cycles are managed via Azure DevOps.
You want to make sure that crash reports for issue analysis is collected, and that beta releases are distributed to your testers. Also, you want to ensure that user feedback on the functionality of new apps is received.
Which of the following must be part of your solution?

A. **Correct** The Microsoft Test & Feedback extension.
B. OWASP ZAP
C. TFS Integration Platform
D. Code Style

   > **Note**:  
   > Integration with Microsoft Visual Studio App Center is a comprehensive solution that 
   > covers mobile app lifecycle management, including collecting bug reports, distributing beta versions, 
   > and obtaining user feedback. It is a robust option for teams looking for a complete solution for mobile app development and >testing.  
   > On the other hand, the Microsoft Test & Feedback extension is specifically designed to facilitate 
   > the collection of feedback and manual testing in web and desktop applications, 
   > but it can also be used for mobile applications. It allows collecting bug reports, distributing beta versions, 
   > and obtaining user feedback. It is an option more focused on the manual testing phase and collaboration between 
   > development teams and end users.
