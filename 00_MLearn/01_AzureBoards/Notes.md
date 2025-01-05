- Learning path :
https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/Instructions/Labs/AZ400_M01_L01_Agile_Plan_and_Portfolio_Management_with_Azure_Boards.html

- We will create Az400WithBoards


# Manage Agile project

- In this exercise, you will use Azure Boards to perform a number of common agile planning and portfolio management tasks, including management of teams, areas, iterations, work items, sprints and capacity, customizing Kanban boards, defining dashboards, and customizing team processes.

## Manage teams, areas, and iterations

- Adding sprints and iterations 

## Manage work items

- Work items play a prominent role in Azure DevOps. Whether describing work to be done, impediments to release, test definitions, or other key items, work items are the workhorse of modern projects

- From Epic to feature 
 - On the Training dashboard panel, note that the assignment, Area, and Iteration are already set to the same values as the epic that the feature is based on. In addition, the feature is automatically linked to the parent item it was created from

- Cannot find : 
  Backlog items have a state that defines where they are relative to being completed. While you could open and edit the work item using the form, it’s easier to just drag cards on the board.



## Manage sprints and capacity

- Planning meetings typically consist of two parts. In the first part, the team and product owner identify the backlog items that the team feels it can commit to completing in the sprint, based on experience with previous sprints. These items get added to the sprint backlog. In the second part, the team determines how it will develop and test each item. They then define and estimate the tasks required to complete each item. Finally, the team commits to implementing some or all the items based on these estimates.



## Customize Kanban boards

- To maximize a team’s ability to consistently deliver high quality software, Kanban emphasizes two main practices. 
  The first, visualizing the flow of work, requires that you map your team’s workflow stages and configure a Kanban board to match. 
  The second, constraining the amount of work in progress, requires that you set work-in-progress (WIP) limits .

- Limit Work in Progress (WIP):
  By capping the number of tasks allowed in progress, Kanban encourages teams to focus on completing tasks rather 
  than starting new ones. This reduces bottlenecks and multitasking.

- Note: As your team updates the status of work as it progresses from one stage to the next, it helps that they agree on what done means. By specifying the Definition of done criteria for each Kanban column, you help share the essential tasks 
  to complete before moving an item into a downstream stage.


## Define dashboards

- Dashboards allow teams to visualize status and monitor progress across the project. 
  At a glance, you can make informed decisions without having to drill down into other parts of your team project site. 
  The Overview page provides access to a default team dashboard which you can customize by adding, removing, 
  or rearranging the tiles. Each tile corresponds to a widget that provides access to one or more features or functions

- You can use existing dashboards: Sprint overview, Sprint  capacity

- Another way of customizing dashboards is to generate charts based on work item queries, which you can share to a dashboard.

- You can create charts based on queries . Each query created can be the origin of a Task .

- You can now add this chart to a dashboard.

- You need to create the query on the *Shared* folder in order to be able to create a Dashboard based on it .