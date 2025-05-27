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


1. How do you design a scalable network architecture using Azure Virtual Networks?
To design a scalable network:

Use Hub-and-Spoke topology for isolation and central management.

Enable VNet peering for efficient traffic flow.

Use Network Security Groups (NSGs) and Application Security Groups (ASGs) for granular control.

Integrate with Azure Firewall or NVA for centralized traffic filtering.

Design subnets based on workload and scale with Address Space Planning.

2. How does Azure Policy help in enforcing compliance across subscriptions?
Azure Policy helps enforce standards and compliance by:

Defining policies that audit or block non-compliant resources.

Applying initiative definitions to group multiple policies.

Using remediation tasks to fix existing non-compliant resources.

Scoping policies across management groups, subscriptions, or resource groups.

3. What’s the difference between Azure RBAC and Azure AD roles?

Azure RBAC: Controls access to Azure resources like VMs, storage, etc.

Azure AD roles: Manage access to directory-level functions (e.g., user/group management, MFA settings).

Example: A user can be a User Administrator (AD role) and Reader (RBAC) on a resource group.

4. How do you use Managed Identities in automation workflows?

Use System-assigned identities for VMs, Functions, AKS, etc., to access resources like Key Vault.

Use User-assigned identities when multiple resources share a common identity.

Avoid secrets by allowing the identity to directly authenticate with Azure resources.

🚀 Kubernetes (AKS) & Deployment Practices
5. How would you perform a zero-downtime deployment in AKS using Helm?

Use Rolling Update strategy in the Deployment.

Configure readinessProbes to ensure traffic only reaches ready pods.

Use helm upgrade with --atomic and --wait for safe deployments.

Set maxUnavailable=0 in strategy to avoid taking down running pods.

6. What’s the difference between affinity and anti-affinity rules in pod scheduling?

Affinity: Schedules pods together (e.g., same node or zone).

Anti-affinity: Ensures pods are distributed apart to improve availability.

Used via requiredDuringSchedulingIgnoredDuringExecution or preferred....

7. How do you auto-scale AKS workloads based on CPU and memory?

Use Horizontal Pod Autoscaler (HPA) to scale pods based on CPU/memory.

Ensure Metrics Server is installed.

Use Cluster Autoscaler to add/remove nodes automatically.

8. What tools do you use to monitor and trace service communication within AKS?

Azure Monitor & Log Analytics for performance and logs.

Prometheus & Grafana for custom metrics.

Kiali + Istio or OpenTelemetry for service tracing and mesh observability.

🚀 CI/CD Pipelines – Azure DevOps & GitOps
9. How do you implement a gated check-in in Azure Repos?

Use Branch Policies to require PRs before merging.

Set build validation with Azure Pipelines.

Enforce code reviewers, work item linking, and status checks.

10. How do you integrate Terraform provisioning into Azure Pipelines?

Use the Terraform task extension in Azure DevOps.

Break pipeline into stages: init, validate, plan, and apply.

Store state in Azure Storage with a lock via Blob Lease.

Inject secrets from Key Vault.

11. What’s your rollback strategy for a failed deployment in production?

Use Helm rollback or redeploy previous stable release.

For infra: terraform plan -out and revert using previous state or backup.

CI/CD: Maintain a versioned artifact history and use release approvals.

12. Compare Blue-Green and Canary deployments – when would you use each?

Blue-Green: Two environments (live + idle); switch traffic instantly.

Best for big bang releases with minimal risk.

Canary: Gradual rollout to a subset; monitor before full rollout.

Best for testing in production, reducing blast radius.

🚀 Infrastructure as Code – Terraform
13. How do you manage shared modules across teams in Terraform?

Create centralized modules stored in Git or Terraform Registry.

Use versioning for backward compatibility.

Enforce standards via module inputs/outputs and documentation.

14. How do you structure Terraform code for multi-environment deployments?

Use separate folders or workspaces: dev/, stage/, prod/.

Separate backend config, TFVars, and environment-specific overrides.

Use a root module that consumes shared modules.

15. What’s your approach to state file locking and secure backend storage?

Store state in Azure Blob Storage.

Enable state locking using Blob Lease mechanism.

Encrypt state at rest and use RBAC/Key Vault for access control.

16. Explain how you use variables, locals, and outputs efficiently in large projects.

Variables: Define dynamic inputs using variables.tf and *.tfvars.

Locals: Used for DRY logic and intermediate values.

Outputs: Share critical info across modules or pipeline outputs.

🚀 Troubleshooting & Debugging Scenarios
17. A pod in AKS fails to mount a persistent volume. How do you troubleshoot it?

Check pod events: kubectl describe pod <pod-name>.

Validate PVC and PV status.

Check if Storage Class exists and supported.

Review Azure Disk/File Share permissions.

18. Your CI pipeline starts timing out. What steps will you take to identify the root cause?

Check for infinite loops, hanging scripts, or long-running jobs.

Review build agent logs.

Investigate network delays, package installs, or external dependencies.

Consider increasing timeout or optimizing scripts.

19. What is the impact of DNS resolution failure in Kubernetes and how to fix it?

Pods can’t reach services; inter-service communication fails.

Debug with:

sh
Copy
Edit
kubectl exec -it <pod> -- nslookup <service>  
Restart CoreDNS pods, check configmaps and DNS policies.

20. A Terraform apply fails due to dependency conflicts — how do you resolve it?

Use terraform graph to visualize dependencies.

Split resources into multiple modules or use depends_on.

Ensure correct resource references and ordering.

Manually refresh state if needed: terraform refresh.
