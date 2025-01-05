# Objectives

- Implement tools to track feedback.
- Plan for continuous monitoring.
- Implement Application Insights.
- Use Kusto Query Language (KQL).

- Monitoring is one of the fundamental aspects of the popular Build-Measure-Learn philosophy, which recommends continuously tracking your KPIs and user behavior metrics and optimizing them through planning iterations.

- **Azure Monitor** is Microsoft's native cloud monitoring solution. Azure Monitor collects monitoring telemetry from different kinds of on-premises and Azure sources.

- **Log Analytics** in Azure is a tool within Azure Monitor that allows you to collect, query, and analyze log and performance data from Azure resources, on-premises systems, and other connected environments. It uses a powerful query language (KQL - Kusto Query Language) to provide insights for troubleshooting, monitoring, and optimization.
- Set up Log Analytics workspace.
- Connect virtual machines to a log analytics workspace.
- Configure Log Analytics workspace to collect custom performance counters.
- Analyze the telemetry-using Kusto Query Language.

- New machine will be created
  - testloganalyticsuser
  - testloganalyticsuser123!

- Check commands script to create a *Log analyctis workspace*

- Azure Monitor Agent (AMA) collects monitoring data from the guest operating system of Azure and hybrid virtual machines and delivers it to Azure Monitor for use by features, insights, and other services such as Microsoft Sentinel and Microsoft Defender for Cloud. This article provides an overview of Azure Monitor Agent's capabilities and supported use cases.

- Azure Monitor agent
- <https://learn.microsoft.com/en-us/azure/azure-monitor/agents/azure-monitor-agent-overview?WT.mc_id=modinfra-17603-pierrer>

- Installing the agent on : <https://learn.microsoft.com/en-us/azure/azure-monitor/agents/azure-monitor-agent-data-collection>
- Installing the agent is a quite tedious operation
- The idea is that we install the log analytics workspace and the installed
   monitor agent will start sending us the collected counters : See **AddMonitorAgent** and **ConfigureCounters** .

# Azure load testing

- *Azure Load Testing* is a fully managed load-testing service that enables you to generate high-scale load. The service simulates traffic for your applications, regardless of where they’re hosted. Developers, testers, and quality assurance (QA) engineers can use it to optimize application performance, scalability, or capacity. Quickly create a load test for your web application by using a URL, and without prior knowledge of testing tools. Azure Load Testing abstracts the complexity and infrastructure to run your load test at scale. For more advanced load testing scenarios, you can create a load test by reusing an existing Apache JMeter test script, a popular open-source load and performance tool. For example, your test plan might consist of multiple application requests, you want to call non-HTTP endpoints, or you’re using input data and parameters to make the test more dynamic.

## Steps

### Prepare a Web app

```bash
  RESOURCEGROUPNAME='az400m08l14-RG-zk'
  LOCATION='eastus'
  az group create --name $RESOURCEGROUPNAME --location $LOCATION
  SERVICEPLANNAME='az400l14-sp'
  az appservice plan create --resource-group $RESOURCEGROUPNAME --name $SERVICEPLANNAME --sku B3
  WEBAPPNAME='az400eshopzakram400'
  az webapp create --resource-group $RESOURCEGROUPNAME --plan $SERVICEPLANNAME --name $WEBAPPNAME
```

- *Note :* The packageForLinux parameter is misleading in the context of this lab, but it is valid for Windows or Linux.

- At a first stage we will only deploy an Azure Webapp to use for Load testing afterwards .

### Exercise 2: Deploy and Setup Azure Load Testing

We can start configuring those parameters for our first Load test

- **Test URL**: Enter the URL from the Azure App Service you deployed in the previous exercise (`az400eshoponweb…azurewebsites.net`), including `https://`.
- **Specify Load**: Virtual Users
- **Number of Virtual Users**: 50
- **Test Duration (minutes)**: 5
- **Ramp-up time (minutes)**: 1

### Automate a Load Test with CI/CD in Azure Pipelines

- After you complete this exercise, you have a CI/CD workflow that is configured to run a load test with Azure Load Testing.

- To run a load test with Azure Load Testing in a CI/CD workflow, you need to add the load test configuration settings and any input files in your source control repository. If you have an existing load test, you can download the configuration settings and all input files from the Azure portal.


### To do later : Add failure/success criteria to Load Testing Pipeline

- Add failureCriteria:
        - avg(response_time_ms) > 300
        - percentage(error) > 50
