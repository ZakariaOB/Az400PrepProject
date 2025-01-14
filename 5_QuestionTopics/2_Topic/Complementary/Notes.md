## `percentile_duration_95` in Application Insights

#### What It Is:
- **`percentile_duration_95`** represents the **95th percentile of the request duration** for a monitored application.
- This means that **95% of all recorded request durations are equal to or shorter** than this value, and only **5% take longer**.

#### Key Points:
- **Percentile Explanation**:  
  The 95th percentile excludes outliers and focuses on how the application performs for most users.
- **Duration**:  
  Refers to the total time (in milliseconds or seconds) it takes for a request to complete.

#### Use Cases:
1. **Performance Monitoring**:  
   - Helps ensure the application performs within acceptable thresholds for the majority of users.  
2. **Detecting Bottlenecks**:  
   - If the `percentile_duration_95` is significantly higher than expected, it may indicate performance bottlenecks.  
3. **SLA Compliance**:  
   - Used to measure adherence to Service Level Agreements (SLAs) and ensure performance standards are met.  

#### Example Scenario:
- If the `percentile_duration_95` is **500ms**, it means:  
  - 95% of requests complete in **500ms or less**.  
  - Only 5% take longer than 500ms.

#### Viewing in Application Insights:
- Found in the **Performance** section of Application Insights.
- Retrieve using **KQL (Kusto Query Language)**. Example query:

```kql
requests
| summarize percentile(duration, 95)
```


## **Dynamic Threshold in Azure Monitor Alerts**

Azure Monitor supports **dynamic thresholds** for alerts, leveraging machine learning models to automatically detect deviations in metrics based on historical data. This approach reduces alert noise and adapts to natural metric fluctuations.

---

#### **Example Scenario**
You want to monitor the **CPU Usage Percentage** of a Virtual Machine (VM). Instead of setting a static threshold (e.g., CPU > 80%), Azure will dynamically adjust thresholds based on historical CPU usage patterns.

---

#### **Steps to Create a Dynamic Threshold Alert**

1. **Go to Azure Monitor**:
   - Open the Azure portal and navigate to **Azure Monitor** > **Alerts** > **+ New alert rule**.

2. **Define the Scope**:
   - Select the **resource** you want to monitor (e.g., a specific VM).

3. **Select Signal**:
   - Choose the metric you want to monitor (e.g., **Percentage CPU**).

4. **Configure Condition**:
   - Select the **Condition** tab.
   - Under "Alert logic," choose **Dynamic Threshold** instead of a static condition.
   - Azure Monitor will analyze historical data and create sensitivity levels:
     - **High Sensitivity**: Detects small deviations (more alerts).
     - **Medium Sensitivity**: Balances detection and noise reduction.
     - **Low Sensitivity**: Detects significant deviations only.

5. **Set Alert Logic**:
   - Define the time aggregation (e.g., **Average** over 5 minutes).
   - Choose to trigger the alert when the metric is **above** or **below** the dynamic threshold.

6. **Set Action Group**:
   - Define who should be notified or what actions should be taken (e.g., email, SMS, or triggering an Azure Logic App).

7. **Review and Create**:
   - Name the alert rule, review the settings, and create it.

---

#### **Example Use Case**
- **Without Dynamic Thresholds**: A fixed alert might trigger when CPU usage exceeds 80%, even if that’s normal during peak hours.  
- **With Dynamic Thresholds**: Azure Monitor learns that CPU usage peaks at 85% during business hours and adjusts the threshold, reducing unnecessary alerts.

---

#### **Kusto Query Example**
If you’re using a Log Analytics workspace, you can monitor data for dynamic thresholds with queries like this:

```kql
InsightsMetrics
| where Name == "Percentage CPU"
| summarize avg(Value) by bin(TimeGenerated, 1h)
| project TimeGenerated, avg_CPU = avg_Value
