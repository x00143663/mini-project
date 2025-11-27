# Mini DevOps Project – Terraform + Docker + Flask + PostgreSQL

This project is a complete end-to-end DevOps lab that demonstrates how to provision and orchestrate a multi-container environment using Terraform and Docker.

The environment includes:
- **Terraform** for provisioning and orchestration  
- **Docker** running:
  - a **PostgreSQL** database container
  - a **Flask** application container
- **Flask** as the application layer  
- **PostgreSQL** as the database backend  



1. The entire environment can be deployed with one command:

terraform apply


---

##   Architecture Overview

### PostgreSQL Module (`modules/postgres`)
This Terraform module:
- pulls the Docker image `postgres:16`
- creates a persistent Docker **named volume**
- runs a PostgreSQL container with environment variables:
  - database name
  - user
  - password
- exposes internal port `5432` on a configurable local port (default: `5433`)

### Flask Module (`modules/flask`)
This module:
- uses the local image `mini-flask:latest`  
- runs a Flask container with environment variables that define DB connection details  
- exposes the application on a configurable port (default: `5000`)

### Application Code (`app/`)
Contains:
- `app.py` — Flask application logic  
- `Dockerfile` — used to build the Docker image (`mini-flask:latest`)

Endpoints:
- `/` — base endpoint  
- `/db` — tests live PostgreSQL connectivity by performing a query

---

##   Requirements

Make sure the following are installed:
- **Docker** (Docker Engine running)
- **Terraform**  
- Optional: `psql` for DB testing

---

##   How to Run

### 1. Build Flask Docker image

```bash
docker build -t mini-flask:latest ./app

2. Initialize Terraform

terraform init

3. Preview the infrastructure changes

terraform plan

4. Deploy the environment

terraform apply

	Access the Application

- Flask app:
http://localhost:5000

- DB connectivity test:
http://localhost:5000/db

If successful, the /db endpoint shows a timestamp retrieved from PostgreSQL.

	Destroy Everything
To remove all containers, volumes, and resources created by Terraform:

terraform destroy
(Optional- To remove the local image:   docker image rm mini-flask:latest)


	Directory Structure

mini-project/
│ main.tf
│ variables.tf
│ outputs.tf
│ README.md
│
├── app/
│   ├── app.py
│   └── Dockerfile
│
└── modules/
    ├── postgres/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    └── flask/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf


	
	What This Project Demonstrates

* Infrastructure-as-Code with Terraform
* Real Terraform modules for DB & App layers
* Container orchestration with Docker
* Secure configuration via environment variables
* Clean & reusable architecture



	Future Enhancements (optional)

* Add Nginx reverse-proxy container
* Add Docker health checks in Terraform
* Use a dedicated docker_network for container-to-container communication
* Replace local PostgreSQL with a cloud DB via Terraform
* Deploy the same architecture on Kubernetes
