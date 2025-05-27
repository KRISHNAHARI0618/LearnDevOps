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

# 🚀 DevOps Round 2 Interview Preparation - Hari Vardhan

## 👤 Introduction
**Name**: Hari Vardhan  
**Experience**: 4 years  
**Role**: DevOps Engineer  

---

## 🚀 Azure Platform & Infrastructure Management

### ✅ How do you design a scalable network architecture using Azure Virtual Networks?
- Use **Hub-and-Spoke** topology for isolation and central management.
- Enable **VNet peering** for efficient traffic flow.
- Use **NSGs** and **ASGs** for access control.
- Integrate with **Azure Firewall** or **NVA**.
- Plan subnets properly for scalability.

### ✅ Explain how Azure Policy helps in enforcing compliance across subscriptions.
- Define **policies** to audit/deny non-compliant resources.
- Use **initiatives** to group multiple policies.
- Apply across **management groups**, **subscriptions**, or **RGs**.
- Enable **remediation tasks** for auto-fix.

### ✅ What’s the difference between Azure RBAC and Azure AD roles?
- **RBAC**: Controls access to Azure resources.
- **Azure AD roles**: Control directory-level access (e.g., user/group management).
- Example: One can be a **User Admin (AD)** and **Reader (RBAC)**.

### ✅ How do you use Managed Identities in automation workflows?
- Use **System-assigned** identities for single-resource access.
- Use **User-assigned** for sharing identity across services.
- Avoid secrets by authenticating directly with Azure resources.

---

## 🚀 Kubernetes (AKS) & Deployment Practices

### ✅ How would you perform a zero-downtime deployment in AKS using Helm?
- Use **Rolling Update** strategy.
- Set **readinessProbes**.
- Use `helm upgrade --atomic --wait`.
- Set `maxUnavailable=0` for no pod downtime.

### ✅ What’s the difference between affinity and anti-affinity rules in pod scheduling?
- **Affinity**: Schedules pods together.
- **Anti-affinity**: Distributes pods apart.
- Controlled via required/preferred scheduling rules.

### ✅ How do you auto-scale AKS workloads based on CPU and memory?
- Use **Horizontal Pod Autoscaler (HPA)**.
- Ensure **Metrics Server** is installed.
- Use **Cluster Autoscaler** for node scaling.

### ✅ What tools do you use to monitor and trace service communication within AKS?
- **Azure Monitor**, **Log Analytics**.
- **Prometheus + Grafana**.
- **Kiali** with **Istio** or **OpenTelemetry**.

---

## 🚀 CI/CD Pipelines – Azure DevOps & GitOps

### ✅ How do you implement a gated check-in in Azure Repos?
- Use **Branch Policies**.
- Add **build validation pipelines**.
- Enforce code review, work item linking.

### ✅ How do you integrate Terraform provisioning into Azure Pipelines?
- Use **Terraform tasks** in pipeline.
- Stages: `init`, `validate`, `plan`, `apply`.
- Store state in **Azure Blob** with locking.
- Secure secrets via **Key Vault**.

### ✅ What’s your rollback strategy for a failed deployment in production?
- Use **Helm rollback** or redeploy last known good release.
- In infra: revert using **Terraform state history** or backups.
- Maintain **versioned artifacts**.

### ✅ Compare Blue-Green and Canary deployments – when would you use each?
- **Blue-Green**: Instant traffic switch, minimal risk.
- **Canary**: Gradual rollout, real-time monitoring.
- Use **Blue-Green** for major releases, **Canary** for safer rollouts.

---

## 🚀 Infrastructure as Code – Terraform

### ✅ How do you manage shared modules across teams in Terraform?
- Use **centralized modules** in Git or Registry.
- Version and document modules.
- Use `source` with version pinning.

### ✅ How do you structure Terraform code for multi-environment deployments?
- Folder-based (`dev/`, `stage/`, `prod/`) or **workspaces**.
- Separate backend and `*.tfvars`.
- Use **root module** to wrap shared modules.

### ✅ What’s your approach to state file locking and secure backend storage?
- Use **Azure Blob Storage** for state.
- Enable **lock** via blob lease.
- Encrypt at rest, use **RBAC**.

### ✅ Explain how you use variables, locals, and outputs efficiently in large projects.
- **Variables** for dynamic inputs.
- **Locals** to simplify logic.
- **Outputs** to expose key values across modules.

---

## 🚀 Troubleshooting & Debugging Scenarios

### ✅ A pod in AKS fails to mount a persistent volume. How do you troubleshoot it?
- Check events: `kubectl describe pod`.
- Validate PVC/PV bindings.
- Check Storage Class and Azure Disk/File access.
- Review IAM or quota issues.

### ✅ Your CI pipeline starts timing out. What steps will you take to identify the root cause?
- Check for script loops or external delays.
- Review agent logs.
- Optimize steps or increase timeout.

### ✅ What is the impact of DNS resolution failure in Kubernetes and how to fix it?
- Breaks service discovery.
- Debug with: `nslookup <service>` inside pod.
- Restart **CoreDNS**, check configmaps and policies.

### ✅ A Terraform apply fails due to dependency conflicts — how do you resolve it?
- Use `terraform graph` to view dependencies.
- Add `depends_on` where needed.
- Split complex resources or refresh state.

---
