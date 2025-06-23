# ✅ GCP Infrastructure Enablement – Interview Readiness Checklist

**Target Role**: Cloud Infra Engineer / GCP DevOps  
**Domain**: Financial (Banking)  
**Tools**: GCP, Terraform, Ansible, Jenkins, Composer, Python, Networking, CI/CD, Compliance

---

## 🌐 GCP Core Concepts

- [ ] GCP Resource Hierarchy (Org → Folders → Projects -> Resources)
- [ ] IAM Roles, Policies, and Service Accounts
- [ ] Billing Accounts, Budgets & Quotas
- [ ] GCP CLI (`gcloud`) usage
- [ ] GCP regions, zones, multi-region design

---

## 🛠️ Terraform on GCP

- [ ] GCP provider configuration (`provider "google"`)
- [ ] Managing `google_compute_instance`, `google_storage_bucket`, etc.
- [ ] Use of `gcs` backend for remote state
- [ ] Terraform modules and workspaces
- [ ] Compliance: Enforcing tags, policies via IaC
- [ ] Sensitive data handling using `sensitive = true`, Secret Manager

---

## ⚙️ CI/CD Pipelines

- [ ] Jenkins pipeline to run Terraform + Ansible
- [ ] GitHub Actions with Workload Identity Federation
- [ ] CI/CD security best practices
- [ ] Canary/staged deployment patterns
- [ ] Monitoring pipeline metrics (duration, status)

---

## ☁️ GCP Services to Know

- [ ] Compute Engine (VMs, Instance templates)
- [ ] Cloud Storage (buckets, classes, ACLs)
- [ ] BigQuery basics (dataset, table, load job)
- [ ] Pub/Sub (topics, subscriptions)
- [ ] Secret Manager (storing credentials)
- [ ] Cloud Functions (automation hooks)
- [ ] IAM (custom roles, least privilege)
- [ ] VPC design (custom mode, peering)
- [ ] Load Balancing and Cloud NAT

---

## 📦 Airflow / Cloud Composer

- [ ] Understand DAGs, tasks, dependencies
- [ ] Use GCP Operators (`BigQuery`, `GCS`, `PythonOperator`)
- [ ] Upload DAGs to GCS Composer bucket
- [ ] Composer service account IAM roles
- [ ] Composer with private IP & VPC network

---

## 🔐 Security & Compliance

- [ ] Public bucket violations & remediation
- [ ] Audit logs, Cloud Monitoring setup
- [ ] Org policy constraints (e.g., restrict external IP)
- [ ] Workload Identity Federation (WIF)
- [ ] Use of VPC Service Controls

---

## 📡 Networking Basics

- [ ] VPC setup (subnets, CIDRs, firewall rules)
- [ ] Interconnect, VPN, Cloud NAT usage
- [ ] Load balancer types (HTTP(S), TCP/UDP)
- [ ] DNS, private access, IP allocation
- [ ] Troubleshoot connectivity issues

---

## 🐍 Python Scripting (DevOps Use)

- [ ] Interact with GCP via Python SDK (`google-cloud-*`)
- [ ] Read YAML/JSON configs
- [ ] Parse logs, error reports
- [ ] Retry logic, exception handling

---

## 🧪 Troubleshooting & Logs

- [ ] Use `gcloud logging read` for incidents
- [ ] Terraform plan/destroy logs
- [ ] Composer DAG/task failure debug
- [ ] Check IAM Denied logs (403/401)
- [ ] Review Cloud Monitoring dashboards

---

## 📊 Data Warehousing (Basics)

- [ ] Understand Data Lake vs Data Warehouse
- [ ] BigQuery concepts: partitioning, clustering
- [ ] Data mart vs warehouse
- [ ] Data ingestion tools (Dataflow, Composer)

---

## 📄 Soft Skills & Documentation

- [ ] Create architecture diagrams (Lucidchart/Draw.io)
- [ ] Document infra and automation in Markdown
- [ ] Present DevOps workflows to teams
- [ ] Break down incidents with RCA (Root Cause Analysis)

---

## 🏁 Optional: GCP Certification Topics

- [ ] Google Cloud Associate Cloud Engineer
- [ ] Google Cloud DevOps Engineer
- [ ] IAM, Networking, CI/CD, Monitoring, Security

---

> Tip: Practice whiteboarding infra, writing Terraform from scratch, and debugging Composer DAGs.
