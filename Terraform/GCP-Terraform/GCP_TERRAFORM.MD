## Google Cloud (GCP) Topics List

---

### 1. Identity & Access Management (IAM)

* Users: Individual User Who Can get access for Principle or Resource or Role and what they can do with Permissions/access

* Groups: The Collection of Users can access same access we called them as Groups

* Roles (Basic, Predefined, Custom) : Collection of permissions where we can assign to Users and Groups and Principles

* Service Accounts : it is a special kind of account where it can access any resource based on permissions rather than users/groups

* IAM Policies & Policy Hierarchy (Org → Folders → Projects → Resources)

* Organization Policies & Constraints

* Workload Identity Federation : Workload Identity Federation (WIF) is a powerful Google Cloud feature that allows external identities (like from GitHub Actions, AWS, Azure, or any OIDC provider) to authenticate to GCP without using service account keys.

---

### 2. Compute Services

* Compute Engine (GCE)
  * It is a Virtual Machine which has os and scalable machine 
  * we will be using "N4-Standard-Machines"
  * VM provisioning, instance templates, managed instance groups
  * Custom images and startup scripts
  * SSH key management
  * Autoscaling and load balancing

* Google Kubernetes Engine (GKE)

  * Cluster types (standard vs autopilot)
  * Node pools, autoscaling
  * Workload identity
  * GKE security best practices
  * Ingress and networking

* Cloud Functions

  * Event-driven compute
  * Triggering from Pub/Sub, GCS, HTTP
  * Environment variables, secret management

* Cloud Run

  * Deploying containerized apps
  * Concurrency and scalability
  * IAM control

* App Engine

  * Standard vs Flexible environment
  * Use cases and pricing

---

### 3. Networking

* VPCs (Custom vs auto mode)
* Subnets, CIDRs, regional VPCs
* Firewall Rules (Ingress/Egress)
* Cloud NAT, Cloud VPN, Interconnect
* Load Balancers (HTTP, TCP, SSL Proxy)
* Private Google Access
* VPC Peering, Shared VPC, VPC Service Controls
* DNS (Cloud DNS – public, private)

---

### 4. Storage & Databases

* Cloud Storage (GCS)

  * Storage classes, object versioning, lifecycle management
  * Signed URLs, ACLs vs IAM, bucket policies
  * Encryption: CMEK, CSEK, Google-managed
* Persistent Disks
* Filestore (NFS)
* Cloud SQL (MySQL/Postgres/SQL Server)
* Spanner (Horizontally scalable SQL DB)
* Firestore / Datastore
* Bigtable (NoSQL, large scale)
* BigQuery (Serverless DWH)

---

### 5. DevOps & Infrastructure as Code

* Cloud Build (Triggers, steps, artifacts, substitutions)
* Cloud Deploy
* Cloud Source Repositories
* Terraform on GCP (provider setup, modules, backend)
* Ansible with GCP (dynamic inventory, provisioning)
* GitOps patterns
* Integration with Jenkins / GitHub Actions

---

### 6. Monitoring, Logging, and Security

* Cloud Logging (Stackdriver)
* Cloud Monitoring (Uptime Checks, Alerts, Dashboards)
* Cloud Trace, Profiler, Debugger
* Cloud Armor (WAF)
* Binary Authorization (for GKE)
* Security Command Center
* Vulnerability scanning
* Cloud Audit Logs

---

### 7. Data & Analytics

* BigQuery (tables, partitions, optimization, IAM)
* Dataflow (Apache Beam pipelines)
* Pub/Sub (messaging, filtering)
* Cloud Composer (Airflow DAGs)
* Dataproc (Hadoop/Spark)

---

### 8. Machine Learning (Optional)

* Vertex AI
* AutoML
* Pre-trained AI APIs (Vision, NLP, Translation, Speech)

---

### 9. Security & Compliance

* Cloud KMS (Key Management)
* Secret Manager
* IAM best practices
* VPC Service Controls
* Organization policy enforcement

---

### 10. Project and Billing Management

* Billing Accounts and Budgets
* Projects & Quotas
* Labels and Tags
* Resource Hierarchy (Org → Folders → Projects)
* Cost optimization strategies
* Pricing calculators and estimators

### Bonus: Practice Projects

* Project	Description
* GCE Web Server	VM + GCS + Firewall + IAM
* GKE Cluster	Create GKE cluster with node pool
* CI/CD Infra	Cloud Build Triggers + Artifact Registry
* Multi-Env Infra (dev/prod)	Using workspaces or separate state files
* IAM Policy Automation	Custom roles + SA bindings
