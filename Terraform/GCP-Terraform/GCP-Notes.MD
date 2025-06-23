### How to Connect GCP with Terraform Account

| Step | Task                                                  |
| ---- | ----------------------------------------------------- |
| ✅    | Create GCP project and service account                |
| ✅    | Store credentials in GitHub Secrets                   |
| ✅    | Create Terraform config with `provider` and `backend` |
| ✅    | Write GitHub Actions workflow                         |
| ✅    | Push code to GitHub and watch it deploy               |


### Flow of Creation

1. Creation of Project
2. Creation of Service account 
3. Give relevant access to that service account and enable apis


### How to Write Data to VM using Terraform

1. Using Meta_data_start_up_script in gcp
2. User data in aws
3. custom_data in azure

### Identity And Access Management in GCP

1. Principle : The identity of a person or system that you want to give permissions to 
2. Role: The Collection of permissions that you want to give the principle
3. Resource: The Google Cloud Resource that you want to give access to principle / role

### [What are AIR Flow and Cloud Composer](https://cloud.google.com/blog/topics/developers-practitioners/what-cloud-composer/)

1. Air Flow: Apache Airflow is an open-source workflow orchestration tool — used to author, schedule, and monitor complex pipelines as code.
2. Cloud Composer is a fully managed workflow orchestration service built on Apache Airflow that helps you author, schedule, and monitor pipelines spanning hybrid and multi-cloud environments. 
3. DAG: Directed Acyclic Graph : Used To design the workflow Graphs
   1. A DAG is a collection of tasks that you want to schedule and run, organized in a way that reflects their relationships and dependencies.
   2. DAGs are created in Python scripts, which define the DAG structure (tasks and their dependencies) using code.
   3. The purpose of a DAG is to ensure that each task is executed at the right time, in the right order, and with the right issue handling.
4. Environments are self-contained Airflow deployments based on Google Kubernetes Engine, and they work with other Google Cloud services using connectors built into Airflow. You can create one or more environments in a single Google Cloud project. You can create Cloud Composer environments in any supported region.

### Google Cloud Composer:

* Cloud Composer Inside Components
  * Cloud Function : Where we write code which uses serverless  architecture 
  * Cloud Storage : Where it stores Data in Buckets or anywhere
  * Cloud Dataprep : It Prepares the data relevant to Usage in DAG 
  * Big Query : Where it stores data in Multiple Tables and structured way
  * Big Query ML :  Loads the data from Big Query Tables 
* Compute Engine is used : a2-standard-2 type machines for gpu/high performence machines
* 

### Where will you store Google Keys

* Cloud Key Management Service 