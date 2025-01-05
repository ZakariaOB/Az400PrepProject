## Azure monitor

| **Aspect**       | **Azure Monitor**             | **Log Analytics**                       | **Application Insights**                |
|-------------------|-------------------------------|------------------------------------------|------------------------------------------|
| **Scope**        | Broad (all Azure resources)   | Log data from Azure and on-prem systems | Specific to applications (APM)          |
| **Data Type**    | Metrics + Logs               | Logs                                    | Application telemetry                    |
| **Analysis**     | General monitoring           | Deep log querying and diagnostics       | Performance and behavior of apps        |
| **Use Case**     | Resource health monitoring   | Troubleshooting infrastructure issues   | Troubleshooting app-specific issues      |
| **Integration**  | Foundation for others        | Works with Azure Monitor                | Built on Azure Monitor                   |


- You can create an alert based on a signal 
  - CPU Percentage 
  - Threshold: static
  - Average > 70%

- Azure Monitor (or any monitoring tool) collects CPU usage metrics at regular intervals from the system or virtual machine. These metrics are usually expressed as a percentage, representing the proportion of time the CPU is busy processing tasks versus idle.

**Formula**:
    \[
    \text{Average CPU Utilization (\%)} = \frac{\text{Sum of CPU usage readings over a period}}{\text{Number of readings}}
    \]


- In Azure Monitor, dynamic thresholds are an advanced alerting feature that allows you to create alerts based on machine learning analysis of metrics. Instead of setting a fixed threshold for a metric, dynamic thresholds automatically adjust based on the metric's historical patterns and trends.


## Azure Log Analytics

- Kusto queries can be used to query data inside the workspace
- You can create a log analytics workspcae and then 
- If you go *virtual machines* 
  - *Click connect on a VM* 
  - This will install VM extension to enable workspace connection with the VM .

- Data collected by the workspace 
  - Settings > Agents > Data collection rules 
    - Create a new rule
    - Add Resource > Chooes VM
    - Add Data source

- You can also direct the logs to a Log anaytics workspace > Sql server.

- We can as well deploy the VM extension on our VM and enable Log analytics Logs .

- *Service Map*: In the Azure context, Service Map is a feature of Azure Monitor that provides automatic discovery 
  and mapping of application components and their dependencies in real time. It helps you visualize and analyze 
  the relationships between servers, processes, and services in your infrastructure.

- For an azure VM scale Set it's possible to configure a *Diagnostic Setting* and link it to the log analytics workspace in order to detect any autoscaling event based on some specific conditions .


## Application insights 

- Create a WebApp
- Application insights resource will be created automatically with the Web APP .
- Once on visual studio I can right click and select *configure application insight*
- It will as well install some dependencies to be able to add application insights .
- For **Web Apps**
  - In the context of Azure App Service, SCM and FTP Basic Auth Profiles refer to the credentials and endpoints used for managing and deploying web apps, as well as accessing related services like the Kudu service and FTP.