## Azure Pipelines :

### Trigger:
1. A trigger tells a pipeline to run.

### Pipeline:
1. A pipeline is made up of one or more stages. 
2. A pipeline can deploy to one or more environments.

### Stages:
1. A stage is a way of organizing jobs in a pipeline and each stage can have one or more jobs.
   
### Job 
1. Each job runs on one agent. 
2. A job can also be agentless.

### Agent :
1. Each agent runs a job that contains one or more steps.

### Steps:
1. A step can be a task or script and is the smallest building block of a pipeline.

### Task
1. A task is a prepackaged script that performs an action, such as invoking a REST API or publishing a build artifact.

### Artifact:
1. An artifact is a collection of files or packages published by a run.

### Variables:
1. When you want to pass any secrets or parameters to pipeline
   
### Loops:
1. When you want to run particular steps or jobs multiple times
   

### Structure for Jobs
Pipeline
├── Stages
│   ├── Stage
│   │   ├── Jobs
│   │   │   ├── Job
│   │   │   │   ├── Steps
│   │   │   │   │   ├── Task
│   │   │   │   │   │   └── Inputs
│   │   │   │   │   └── Script (alternative step)

### Azure Concepts - Along With Terraform
1. Subscription
---> Resource Group
        ----> Virtual Network
                ----> Public Subnet
                        ---> Azure Load Balancer
                        ---> VMS
                        ---> Public Facing Storage Account
                        ---> Route Table
                        ---> Route Table Association
                        ---> Web application Firewall
                ----> Private Subnets
                        ---> Azure Kubernetes Services
                        ---> Private Link AKS
                        ---> Public IP Address For AKS
                ---> Private Subnets 
                        ---> Azure PostGress Flexible
                        ---> Public IP Address
### IAM
1. Azure Entra ID (formerly Known as azure active directory)
2. Users, Groups,Roles,Service Principles,Managed Identity
### Resource Groups

### VMs
1. Virtual Machine Scale Sets
### Vnets
1. Isolated Networking with in Cloud Is called Virtual Network
2. Inside Vnet we can have multiple subnets etc..
3. With Ip Address as address space
4. VNet Peering
### Subnets
1. Isolated Resource allocation to Different Services
2. Private and Public Subnets
### AKS Route Table
1. Route Table 
### Security Groups 
1. Security Groups are traffic flow to vms and its applications
2. Inbound and Outbound Traffic
3. Network Security Groups
   1. Security At Subnet Level With Rules/Path Based/Ports/Ip Numbers
### Azure Firewal
1. Allows Traffic Flow to VMS and relevent Services
### Azure Web Application Firewall 
1. Frond Door and CDN Profiles
2. Allows Users to connect via web application firewall
### Application Gateway
1. Allows Traffic To Azure Services 

*Flow of Azure Applicate Gateway and Firewall WAF*
Users --> App Gateway --> Web Application Firewall --> Azure Firwall Premium --> Inbound & Outvbound Traffic --> Azure VM

### Load Balancers
1. Azure Load Balancer [TCP/UDP]
2. 
### Key Vaults
### AKS
1. Azure Kubernetes Service
2. Azure Node Pools
3. vm size

### Nodes 
### Storage Accounts & Containers

### Private Links
1. Azure Private Link enables you to access Azure PaaS Services (for example, Azure Storage and SQL Database) and Azure hosted customer-owned/partner services over a private endpoint in your virtual network.

### VPN Gateways
### When We want to connect onprem services to azure cloud services
1. We can use Express Route 
2. Azure VPN Gateway
3. Vnet Gateway
4. Site To Site VPN