## **Question 1**

You need to recommend project metrics for dashboards in Azure DevOps.
Which chart widgets should you recommend for each metric? To answer, drag the appropriate chart widgets to the correct metrics. Each chart widget may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

You need to recommend project metrics for dashboards in Azure DevOps.
Which chart widgets should you recommend for each metric? To answer, drag the appropriate chart widgets to the correct metrics. Each chart widget may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.

### Key Metrics in Azure DevOps

- **Lead Time**:  
  Measures the total time elapsed from the creation of work items to their completion.  

- **Cycle Time**:  
  Measures the time it takes for your team to complete work items once they begin actively working on them.  

- **Burndown**:  
  - **Burndown charts** focus on the remaining work within a specific time period.  
  - **Burnup charts** focus on the completed work.  

#### References:
- [Cycle Time and Lead Time](https://docs.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)  
- [Configure Burndown and Burnup Widgets](https://docs.microsoft.com/en-us/azure/devops/report/dashboards/configure-burndown-burnup-widgets?view=azure-devops) 



## **Question 2**

- See **Support** for *duration_percentile_95*

- I think the second answer should be resultCode. To detect authentication issue we're interested in 401 and 403. 
  Success could be set to false not only due to authentication issue, but other issues like unhandled exceptions 500, and so on.
  The first one is correct.


## **Question 3**

You manage an Azure web app that supports an e-commerce website.
You need to increase the logging level when the web app exceeds normal usage patterns. The solution must minimize administrative overhead.
Which two resources should you include in the solution? Each correct answer presents part of the solution.
NOTE: Each correct selection is worth one point.

A. **Correct** an Azure Automation runbook
B. **Correct** an Azure Monitor alert that has a dynamic threshold Most Voted
C. an Azure Monitor alert that has a static threshold
D. the Azure Monitor autoscale settings
E. an Azure Monitor alert that uses an action group that has an email action


## **Question 4**

You have an Azure Kubernetes Service (AKS) pod.
You need to configure a probe to perform the following actions:
- Confirm that the pod is responding to service requests.
- Check the status of the pod four times a minute.
- Initiate a shutdown if the pod is unresponsive.
  How should you complete the YAML configuration file? To answer, select the appropriate options in the answer area.
  NOTE: Each correct selection is worth one point.

> **Note**:  
   > The readinessProbe is wrong.
   > It clearly says "Initiate a shutdown if the pod is unresponsive."
   > How can you iniate a shutdown (restart) with readinessProbe.
   > It must have been livelinessProbe.
   > periodSeconds: 15


## **Question 5**

You have a Microsoft ASP.NET Core web app in Azure that is accessed worldwide.
You need to run a URL ping test once every five minutes and create an alert when the web app is unavailable from specific Azure regions. The solution must minimize development time.
What should you do?

A. Create an Azure Monitor Availability metric and alert.
B. **Correct** Create an Azure Application Insights availability test and alert.
C. Write an Azure function and deploy the function to the specific regions.
D. Create an Azure Service Health alert for the specific regions.

Check article;
https://learn.microsoft.com/en-us/azure/azure-monitor/app/availability-overview#:~:text=After%20you%27ve%20deployed,responds%20too%20slowly.

After you've deployed your web app or website, you can set up recurring tests to monitor availability and responsiveness. Application Insights sends web requests to your application at regular intervals from points around the world. It can alert you if your application isn't responding or responds too slowly.


# **Question 6**

You have a multi-tier application. The front end of the application is hosted in Azure App Service.
You need to identify the average load times of the application pages.
What should you use?

A. **Correct** Azure Application Insights
B. the activity log of the App Service
C. the diagnostics logs of the App Service
D. Azure Advisor

# **Question 7**

You need to create an instance of Azure Application Insights named az400-123456789-main and configure the instance to receive telemetry data from an Azure web app named az400-123456789-main.
To complete this task, sign in to the Microsoft Azure portal.


# **Question 8**

Your company uses ServiceNow for incident management.
You develop an application that runs on Azure.
The company needs to generate a ticket in ServiceNow when the application fails to authenticate.
Which Azure Log Analytics solution should you use?

A. Application Insights Connector
B. Automation & Control
C. **Correct** IT Service Management Connector (ITSM)
D. Insight & Analytics


# **Question 9**

Your company is building a new web application.
You plan to collect feedback from pilot users on the features being delivered.
All the pilot users have a corporate computer that has Google Chrome and the Microsoft Test & Feedback extension installed. The pilot users will test the application by using Chrome.
You need to identify which access levels are required to ensure that developers can request and gather feedback from the pilot users. 
The solution must use the principle of least privilege.
Which access levels in Azure DevOps should you identify? To answer, select the appropriate options in the answer area.
  - Developers -> basic
  - Pilot users -> stake holders
**The principle of least privilege (PoLP)** is a security concept that ensures users, systems, or processes are granted the minimum level of access or permissions required to perform their tasks—nothing more, nothing less. This minimizes the risk of accidental or intentional misuse, system compromise, or breaches.


# **Question 10**

You use Azure SQL Database Intelligent Insights and Azure Application Insights for monitoring.
You need to write ad-hoc queries against the monitoring data.
Which query language should you use?

A. **Correct** Kusto Query Language (KQL)
B. PL/pgSQL
C. PL/SQL
D. Transact-SQL

# **Question 11**

Your company creates a web application.
You need to recommend a solution that automatically sends to Microsoft Teams a daily summary of the exceptions that occur in the application.
Which two Azure services should you recommend? Each correct answer presents part of the solution.
NOTE: Each correct selection is worth one point.

A. **Correct** Azure Logic Apps
B. Azure Pipelines
C. Microsoft Visual Studio App Center
D. Azure DevOps Project
E. **Correct** Azure Application Insights


# **Question 12**

Your company wants to use Azure Application Insights to understand how user behaviors affect an application.
Which Application Insights tool should you use to analyze each behavior? To answer, drag the appropriate tools to the correct behaviors. Each tool may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
NOTE: Each correct selection is worth one point.

  - **Feature usage**      -> Users
  - **User action by day** -> User Flows
  - **The effect ...**     -> Impact

# **Question 13**

Your company is building a mobile app that targets Android and iOS devices.
Your team uses Azure DevOps to manage all work items and release cycles.
You need to recommend a solution to perform the following tasks:

  - Collect crash reports for issue analysis.
  - Distribute beta releases to your testers.
  - Get user feedback on the functionality of new apps.
  
  What should you include in the recommendation?

A. the Microsoft Test & Feedback extension
B. **Correct (Keyword Mobile App)** Microsoft Visual Studio App Center integration
C. Azure Application Insights widgets
D. Jenkins integration


# **Question 15**

You need to create a notification if the peak average response time of an Azure web app named az400-123456789-main is more than five seconds when evaluated during a five-minute period. The notification must trigger the `https://contoso.com/notify` webhook.
- To complete this task, sign in to the Microsoft Azure portal.
  - go to the web app
  - go to metrics
  - go to alerts
  - go to create/create new rule
  - select response time
  - select static
  - select operator greater than
  - set threshold 5
  - next an create an action group or select an existing one that send the notification to the webhook, if you create 
    a new action group just select the action you need in   - this case webhook and set the url review and create 
    and the keep going with the alert configuration.


# **Question 16**

You need to create and configure an Azure Storage account named az400lod123456789stor in a resource group named RG1lod123456789 to store the boot diagnostics for a virtual machine named VM1.
To complete this task, sign in to the Microsoft Azure portal.

  - Dependent on whether the VM is created or not we have 2 main paths:
    1. Create a storage account
    2. Go to VM -> Help> Boot diagnostics -> Settings -> "Enable with custom storage account"
     2.1. If we have to create the VM -> tab monitoring -> boot diagnostics -> enable with custom storage account and select the storage created in step 1 or, if you first create the VM -> chose create new and create the storage account directly with the creation of the VM


# **Question 17** (Todo)

You have a web app that connects to an Azure SQL Database named db1.
You need to configure db1 to send Query Store runtime statistics to Azure Log Analytics.
To complete this task, sign in to the Microsoft Azure portal.

To enable streaming of diagnostic telemetry for a single or a pooled database, follow these steps:
1. Go to Azure SQL database resource.
2. Select Diagnostics settings.
3. Select Turn on diagnostics if no previous settings exist, or select Edit setting to edit a previous setting. You can create up to three parallel connections to stream diagnostic telemetry.
4. Select Add diagnostic setting to configure parallel streaming of diagnostics data to multiple resources.
5. Enter a setting name for your own reference.
6. Select a destination resource for the streaming diagnostics data: Archive to storage account, Stream to an event hub, or Send to Log Analytics.
7. For the standard, event-based monitoring experience, select the following check boxes for database diagnostics log telemetry: QueryStoreRuntimeStatistic
8. For an advanced, one-minute-based monitoring experience, select the check box for Basic metrics.
9. Select Save.


# **Question 18**

You might find it useful to create a list only of distinct values. This list is called a set, and you can generate it by using the makeset command:
Event
| where TimeGenerated > ago(12h)
| order by TimeGenerated desc
| summarize makeset(EventID) by Computer

  ##### Grouping and Aggregation with `summarize`

  ##### Grouping Data (`by Computer`):
  The `summarize` operator groups the data based on the `Computer` column. Each unique value of `Computer` becomes a group.

  ##### Aggregation Using `makeset(EventID)`:
  The `makeset(EventID)` function creates a **set** (unique values) of `EventID` entries for each `Computer` group.  
  This ensures that duplicate `EventID`s are removed within the set.


# **Question 19**

You have an Azure web app named Webapp1.
You need to use an Azure Monitor query to create a report that details the top 10 pages of Webapp1 that failed.
How should you complete the query? To answer, select the appropriate options in the answer area.

requests
| where success == 'False'
| summarize sum(itemCount) by bin(timestamp, 5m)
| render barchart



# **Question 20**

You are monitoring the health and performance of an Azure web app by using Azure Application Insights.
You need to ensure that an alert is sent when the web app has a sudden rise in performance issues and failures.
What should you use?

A. custom events
B. Application Insights Profiler
C. usage analysis
D. *Correct* Smart Detection Most Voted
E. Continuous export

Smart detection automatically warns you of potential performance problems and failure anomalies in your web application. 
It performs proactive analysis of the telemetry that your app sends to Application Insights. 
If there is a sudden rise in failure rates, or abnormal patterns in client or server performance, you get an alert. This feature needs no configuration. 
It operates if your application sends enough telemetry.


# **Question 21**

You have a project in Azure DevOps named Contoso App that contains pipelines in Azure Pipelines for GitHub repositories.
You need to ensure that developers receive Microsoft Teams notifications when there are failures in a pipeline of Contoso App.
What should you run in Teams? To answer, select the appropriate options in the answer area.
NOTE: Each correct selection is worth one point.

@azure pipelines subscribe [project url]

# **Question 22**

You have a private GitHub repository.
You need to display the commit status of the repository on Azure Boards.
What should you do first?

A. Configure multi-factor authentication (MFA) for your GitHub account.
B. Add the Azure Pipelines app to the GitHub repository.
C. *Correct* Add the Azure Boards app to the repository. Most Voted
D. Create a GitHub action in GitHub.

https://docs.microsoft.com/en-us/azure/devops/boards/github/install-github-app?view=azure-devops


# **Question 23**

You are integrating Azure Pipelines and Microsoft Teams.
You install the Azure Pipelines app in Microsoft Teams.
You have an Azure DevOps organization named Contoso that contains a project name Project1.
You subscribe to Project1 in Microsoft Teams.
You need to ensure that you only receive events about failed builds in Microsoft Teams.
What should you do first?

A. **Correct** From Microsoft Teams, run @azure pipelines subscribe https://dev.azure.com/Contoso/Project1.
B. From Azure Pipelines, add a Publish Build Artifacts task to Project1.
C. From Microsoft Teams, run @azure pipelines subscriptions.
D. From Azure Pipelines, enable continuous integration for Project1

https://www.youtube.com/watch?v=MkjzfBLtkSc



# **Question 24**

You have an Azure DevOps organization named Contoso.
You need to receive Microsoft Teams notifications when work items are updated.
What should you do?

A. From Azure DevOps, configure a service hook subscription
B. **Correct** From Microsoft Teams, configure a connector
C. From the Microsoft Teams admin center, configure external access
D. From Microsoft Teams, add a channel
E. From Azure DevOps, install an extension


# **Question 25**

You create an alert rule in Azure Monitor as shown in the following exhibit.

A. **Correct** a failed attempt to delete the ASP-9bb7 resource Most Voted
B. a change to a role assignment for the ASP-9bb7 resource
C. a successful attempt to delete the ASP-9bb7 resource
D. a failed attempt to scale up the ASP-9bb7 resource


# **Question 26**

You have a web app hosted on Azure App Service. The web app stores data in an Azure SQL database.
You need to generate an alert when there are 10,000 simultaneous connections to the database. The solution must minimize development effort.
Which option should you select in the Diagnostics settings of the database?

A. **Correct** Send to Log Analytics
B. Stream to an event hub
C. Archive to a storage account

# **Question 28**

You have an Azure virtual machine that is monitored by using Azure Monitor.
The virtual machine has the Azure Log Analytics agent installed.
You plan to deploy the Service Map solution from the Azure Marketplace.
What should you deploy to the virtual machine to support the Service Map solution?

A. **Correct** the Dependency agent
B. the Telegraf agent
C. the Windows Azure diagnostics extension (WAD)
D. the Azure monitor agent

https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-enable-overview#agents

Log Analytics agent is going to be replaced by Azure Monitor agent
Service Map is going to be replaced by Azure Monitor VM insights
But the Dependency agent is still required
In fact, both agents are automatically installed when Azure Monitor VM insights is enabled


# **Question 29**

You have a project in Azure DevOps that contains a Continuous Integration/Continuous Deployment (CI/CD) pipeline.
You need to enable detailed logging by defining a pipeline variable.
How should you configure the variable? To answer, select the appropriate options in the answer area.
NOTE: Each correct selection is worth one point.

Correct. 
To enable verbose log you have to add the following variable:
System.Debug = true


# **Question 31**

You have multiple teams that work on multiple projects in Azure DevOps.

You need to plan and manage the consumers and producers for each project. The solution must provide an overview of all the projects.

What should you do?

A. Add a Predecessor or Successor link to the feature or user story for the items of each project.
B. Add a Parent or Child link to the feature or user story for the items of each project.
C. Install the Dependency Tracker extension and create dependencies for each project.
D. Create a custom query to show the consumers and producers and add a widget to a dashboard


# **Question 33**

You have an Azure web app named webapp1 that uses the .NET Core runtime stack. You have an Azure Application Insights 
resource named AppInsights1 that collects telemetry data generated by webapp1.

You plan to deploy webapp1 by using an Azure DevOps pipeline.
You need to modify the sampling rate of the telemetry data processed by AppInsights1 without having to redeploy webapp1 after each modification.

What should you do? To answer, select the appropriate options in the answer area.

1. Disable adaptive sampling
2. Modify usage and estimated costs settings

https://learn.microsoft.com/en-us/azure/azure-monitor/app/sampling#types-of-sampling
Ingestion sampling happens at the Application Insights service endpoint. It discards some of the telemetry that arrives from your app, 
at a sampling rate that you set. It doesn't reduce telemetry traffic 
sent from your app, but helps you keep within your monthly quota. The main advantage of ingestion sampling is 
that you can set the sampling rate without redeploying your app. Ingestion sampling works uniformly for 
all servers and clients, but it doesn't apply when any other types of sampling are in operation.

https://learn.microsoft.com/en-us/azure/azure-monitor/app/sampling#ingestion-sampling
Ingestion sampling doesn't operate while adaptive or fixed-rate sampling is in operation. Adaptive sampling 
is enabled by default when the ASP.NET SDK or the ASP.NET Core SDK is being used, or when Application Insights 
is enabled in Azure App Service or by using Application Insights Agent.
