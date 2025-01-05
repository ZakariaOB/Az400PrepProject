# Desired state configuration

- For a weapp to be hosted we will alwyas need IIS
- If by any chance IIS is not available nothing will work
- It's mandatory to have IIS as a desired state configuration
- We will use Azure automation
- You can for and install Azure automation
- Create an **automation account**

# Using a configuration file

- In order to import a configuration file we can 
   - Go to *Configuration Management* > *state configuration file*
   - Import the file
   - Compile the DSC configuration
 - After adding the configuration you should wait for it to be compiled
    - In an Azure DSC context, compiling a configuration file is necessary because Desired State Configuration (DSC) operates on a compiled format (a .MOF file) rather than the raw PowerShell script. This compilation process is essential for translating the configuration script into a format that Azure and DSC engines can understand and apply to the target nodes. Here's why this is required
 - It could take 1 minute or 2 to compile the dsc file
 - Let us create a VM to apply DSC : (appUser400, useraz400@400!)
 - Add the created VM to the nodes of the configuration
 - At DSC virtual machine > Connect level : Once you click on connect an extension
   would be installed at VM level to allow communication between 'automation' service
   and the virtual machine .

# Dsc nodes

In the context of Desired State Configuration (DSC), a Node refers to a target machine or resource that you want to configure and manage using DSC. A Node could be any system where you intend to apply your desired configuration, such as:

- A physical server
- A physical server
- A virtual machine (VM)
- A cloud instance (e.g., Azure VM)
- A network device
- A workstation
The Node is identified in a DSC script as the target for which the configuration is intended. Each Node represents a distinct entity with its own specific configuration.

# How Machines Receive DSC Configurations

## 1. Push Mode
- **How It Works**: Admin manually sends the configuration to machines using the `Start-DscConfiguration` cmdlet.
- **Use Case**: Best for small-scale environments or one-time updates.
- **Steps**:
  1. Define and compile the configuration into a MOF file.
  2. Push the MOF to the target machine(s).

---

## 2. Pull Mode
- **How It Works**: Machines automatically fetch configurations from a central Pull Server periodically.
- **Use Case**: Ideal for large-scale environments requiring central management.
- **Steps**:
  1. Set up a Pull Server (IIS-based).
  2. Configure target machines with the Pull Server URL in their Local Configuration Manager (LCM).
  3. Upload MOF files and required DSC resources to the Pull Server.

---

## Key Differences

| **Feature**             | **Push Mode**            | **Pull Mode**            |
|--------------------------|--------------------------|--------------------------|
| Central Management       | Not required            | Required (Pull Server)   |
| Scalability              | Limited                 | Large-scale environments |
| Update Frequency         | On-demand               | Periodic (via LCM)       |

---

## Summary
Use **Push** for quick and small updates, and **Pull** for centralized, scalable configurations.


# Using VM extension

- It could help us install automatically : IIS and > to recheck

# Using Team agent services

- 
