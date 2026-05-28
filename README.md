# EcoSmart — Cloud-Native Enterprise DevSecOps Platform

A production-grade, end-to-end DevSecOps platform implementing CI/CD automation, Infrastructure as Code, Kubernetes orchestration, security scanning, monitoring, and centralized logging using enterprise cloud-native tools and practices.

![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?style=flat-square&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=flat-square&logo=amazonaws)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-326CE5?style=flat-square&logo=kubernetes)
![Docker](https://img.shields.io/badge/Docker-Containers-2496ED?style=flat-square&logo=docker)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-D24939?style=flat-square&logo=jenkins)
![Grafana](https://img.shields.io/badge/Grafana-Monitoring-F46800?style=flat-square&logo=grafana)
![Prometheus](https://img.shields.io/badge/Prometheus-Metrics-E6522C?style=flat-square&logo=prometheus)
![SonarQube](https://img.shields.io/badge/SonarQube-Code%20Quality-4E9BCD?style=flat-square&logo=sonarqube)
![Trivy](https://img.shields.io/badge/Trivy-Security%20Scanning-1904DA?style=flat-square)
![Loki](https://img.shields.io/badge/Loki-Logging-0A84FF?style=flat-square)

---

## Table of Contents

- [Project Overview](#project-overview)
- [System Architecture](#system-architecture)
- [Technology Stack](#technology-stack)
- [Key Features](#key-features)
- [CI/CD Pipeline](#cicd-pipeline)
- [DevSecOps Security](#devsecops-security)
- [Monitoring and Observability](#monitoring-and-observability)
- [Centralized Logging](#centralized-logging)
- [Kubernetes Deployment](#kubernetes-deployment)
- [Infrastructure as Code](#infrastructure-as-code)
- [Project Screenshots](#project-screenshots)
- [Deployment Guide](#deployment-guide)
- [Monitoring Setup](#monitoring-setup)
- [Logging Setup](#logging-setup)
- [Troubleshooting](#troubleshooting)
- [Future Enhancements](#future-enhancements)
- [Lessons Learned](#lessons-learned)
- [Author](#author)

---

## Project Overview

EcoSmart demonstrates a production-grade DevSecOps workflow for deploying and managing a Smart Home Management application using enterprise tools and cloud-native technologies.

The platform integrates CI/CD automation with Jenkins, infrastructure provisioning via Terraform, containerization with Docker, Kubernetes orchestration on Minikube, full-stack observability with Prometheus and Grafana, centralized logging with Loki and Promtail, and security scanning using Trivy, SonarQube, and OWASP Dependency Check — all deployed on AWS cloud infrastructure with automated scaling via HPA and GitHub webhook-triggered pipelines.

This project was designed to simulate a real-world enterprise DevSecOps environment.

---

## System Architecture

### End-to-End Workflow

```
Developer → GitHub → Jenkins CI/CD Pipeline → Security Scanning → Docker Build → Terraform Infrastructure → Kubernetes Deployment → Monitoring & Logging
```

### Architecture Diagram

```
                            ┌────────────────────┐
                            │     Developer      │
                            └─────────┬──────────┘
                                      │
                                      ▼
                            ┌────────────────────┐
                            │      GitHub        │
                            │ Source Code Mgmt   │
                            └─────────┬──────────┘
                                      │  Webhook Trigger
                                      ▼
                            ┌────────────────────┐
                            │      Jenkins       │
                            │   CI/CD Server     │
                            └─────────┬──────────┘
                                      │
          ┌───────────────────────────┼───────────────────────────┐
          │                           │                           │
          ▼                           ▼                           ▼
 ┌────────────────┐        ┌──────────────────┐        ┌─────────────────┐
 │   SonarQube    │        │ OWASP Dependency │        │      Trivy      │
 │ Code Analysis  │        │      Check       │        │ Security Scan   │
 └────────────────┘        └──────────────────┘        └─────────────────┘
                                      │
                                      ▼
                            ┌────────────────────┐
                            │   Docker Build     │
                            │  Containerization  │
                            └─────────┬──────────┘
                                      │
                                      ▼
                            ┌────────────────────┐
                            │     Terraform      │
                            │ Infrastructure IaC │
                            └─────────┬──────────┘
                                      │
                      ┌───────────────────────────────┐
                      │              AWS              │
                      │  EC2 | S3 | DynamoDB | IAM   │
                      └───────────────────────────────┘
                                      │
                                      ▼
                         ┌─────────────────────────┐
                         │      Kubernetes         │
                         │        Minikube         │
                         └──────────┬──────────────┘
                                    │
       ┌────────────────────────────┼────────────────────────────┐
       │                            │                            │
       ▼                            ▼                            ▼
┌───────────────┐         ┌─────────────────┐         ┌─────────────────┐
│   Frontend    │         │     Backend     │         │      MySQL      │
│ React + Vite  │         │ Spring Boot API │         │    Database     │
└───────────────┘         └─────────────────┘         └─────────────────┘
                                    │
                                    ▼
                   ┌────────────────────────────────┐
                   │        Monitoring Stack        │
                   │  Prometheus + Grafana          │
                   │  Alertmanager + Metrics Server │
                   └────────────────────────────────┘
                                    │
                                    ▼
                   ┌────────────────────────────────┐
                   │         Logging Stack          │
                   │       Loki + Promtail          │
                   └────────────────────────────────┘
```

### Architecture Highlights

- Fully containerized microservice deployment
- Automated CI/CD pipeline with GitHub webhook integration
- Kubernetes-native deployment with Horizontal Pod Autoscaling
- Infrastructure provisioning and version control via Terraform
- Integrated DevSecOps security scanning at every pipeline stage
- Cloud-native observability stack with Prometheus and Grafana
- Centralized log aggregation with Loki and Promtail
- AWS remote Terraform backend with DynamoDB state locking

---

## Technology Stack

| Category | Technologies |
|---|---|
| Programming Languages | Java, JavaScript |
| Backend Framework | Spring Boot |
| Frontend Framework | React + Vite |
| Build Tools | Maven, npm |
| Containerization | Docker, Docker Compose, NGINX |
| Container Orchestration | Kubernetes, Minikube |
| CI/CD | Jenkins, GitHub Webhooks |
| Infrastructure as Code | Terraform |
| Cloud Provider | AWS |
| AWS Services | EC2, S3, DynamoDB, IAM, Security Groups |
| Monitoring | Prometheus, Grafana, Alertmanager, Metrics Server |
| Logging | Loki, Promtail |
| Security | Trivy, SonarQube, OWASP Dependency Check |
| Scaling | HPA, Kubernetes Metrics Server |
| Database | MySQL |
| Networking | NGINX Ingress Controller, Ngrok |
| Project Management | Jira |

---

## Key Features

### CI/CD Automation

- Automated Jenkins pipeline execution triggered via GitHub webhooks
- Full Continuous Integration and Continuous Deployment workflow
- Automated Docker image builds and Kubernetes deployments
- Pipeline stage gating with quality and security checks

### Infrastructure as Code

- Terraform-based AWS infrastructure provisioning
- Remote state management using S3
- State locking using DynamoDB
- Modular Terraform architecture with EC2 provisioning automation

### Containerization and Orchestration

- Dockerized frontend and backend services
- Kubernetes-based orchestration with NGINX Ingress Controller
- Deployments, Services, ConfigMaps, Secrets, and Ingress management
- Horizontal Pod Autoscaler (HPA) for demand-based scaling

### DevSecOps and Security

- SonarQube static code analysis with Quality Gate enforcement
- Trivy container image vulnerability scanning
- OWASP Dependency Check for supply chain security
- Secure secret handling via Kubernetes Secrets
- Shift-left security: scanning integrated before deployment

### Monitoring and Observability

- Prometheus metrics collection with Spring Boot Actuator and Micrometer
- Grafana dashboards for JVM, Kubernetes, and application performance
- Alertmanager for alert routing and notification
- Kubernetes resource metrics via kube-state-metrics and Metrics Server

### Centralized Logging

- Loki log aggregation with Promtail collection agents
- Grafana Explore for pod log inspection and backend troubleshooting
- LogQL queries for real-time log analysis across Kubernetes workloads

---

## Project Structure

```
EcoSmart/
│
├── backend/                        # Spring Boot backend application
├── frontend/                       # React + Vite frontend application
│
├── kubernetes/                     # Kubernetes manifests
│   ├── backend/
│   ├── frontend/
│   ├── ingress/
│   ├── monitoring/
│   └── mysql/
│
├── terraform/                      # Terraform Docker provisioning
├── terraform-aws/                  # Terraform AWS infrastructure
│   └── modules/
│       └── ec2/
│
├── docs/                           # Project documentation
│   ├── architecture/
│   ├── diagrams/
│   ├── monitoring/
│   ├── pipeline/
│   ├── security/
│   ├── setup-guides/
│   └── screenshots/
│
├── Jenkinsfile                     # CI/CD pipeline definition
├── docker-compose.yml              # Local multi-container setup
├── README.md
└── .gitignore
```

---

## CI/CD Pipeline

### Pipeline Flow

```
Developer Pushes Code
        ↓
GitHub Repository
        ↓
GitHub Webhook Trigger
        ↓
Jenkins Pipeline Starts
        ↓
Code Checkout
        ↓
Backend Build (Maven)
        ↓
Frontend Build (npm / Vite)
        ↓
SonarQube Code Analysis
        ↓
OWASP Dependency Check
        ↓
Docker Image Build
        ↓
Trivy Security Scan
        ↓
Terraform Infrastructure Provisioning
        ↓
Kubernetes Deployment
        ↓
Monitoring and Logging Integration
```

### Jenkins Pipeline Stages

| Stage | Purpose |
|---|---|
| Checkout | Pull latest code from GitHub |
| Backend Build | Compile and package Spring Boot application |
| Frontend Build | Build React/Vite frontend assets |
| SonarQube Analysis | Static code quality and security scanning |
| Dependency Check | OWASP dependency vulnerability analysis |
| Docker Build | Build container images for all services |
| Trivy Scan | Container image vulnerability scanning |
| Terraform Init | Initialize remote Terraform backend |
| Terraform Plan | Preview infrastructure changes |
| Terraform Apply | Provision AWS infrastructure |
| Kubernetes Deploy | Deploy workloads to the cluster |
| Monitoring Integration | Apply Prometheus and Grafana configuration |

---

## DevSecOps Security

Security is integrated throughout the CI/CD lifecycle following shift-left DevSecOps principles, ensuring vulnerabilities are detected before deployment.

### SonarQube Static Code Analysis

Performs code quality inspection, bug detection, code smell identification, security hotspot analysis, and Quality Gate enforcement on every pipeline run.

### OWASP Dependency Check

Scans project dependencies for known CVEs and vulnerable packages, providing supply chain security coverage as part of the automated build process.

### Trivy Container Scanning

Scans Docker images for OS-level vulnerabilities, exposed secrets, and misconfigurations before images are pushed or deployed.

### Kubernetes Security

Sensitive credentials are managed using Kubernetes Secrets. Namespace isolation and secure container deployment practices are enforced across all workloads.

---

## Monitoring and Observability

### Monitoring Stack

| Tool | Purpose |
|---|---|
| Prometheus | Metrics collection and storage |
| Grafana | Metrics visualization and dashboards |
| Alertmanager | Alert routing and notification handling |
| Spring Boot Actuator | Application health and metrics exposure |
| Micrometer | Prometheus metrics integration for Spring Boot |
| kube-state-metrics | Kubernetes object-level metrics |
| Metrics Server | Kubernetes resource utilization metrics |
| HPA | Horizontal pod autoscaling based on metrics |

### Metrics Collected

**Application Metrics:** JVM memory usage, CPU utilization, HTTP request count, request latency, active threads, garbage collection metrics.

**Kubernetes Metrics:** Pod health, deployment status, resource utilization, node metrics, cluster health.

### Alerting

Prometheus Alert Rules and Alertmanager are configured to monitor service availability, pod health, Kubernetes target failures, resource usage thresholds, and backend service downtime.

### Grafana Dashboards

Dashboards are configured for JVM monitoring, Kubernetes cluster monitoring, application performance metrics, resource utilization, Prometheus target health, and infrastructure observability.

---

## Centralized Logging

### Logging Stack

| Tool | Purpose |
|---|---|
| Loki | Log aggregation and storage |
| Promtail | Log collection agent on Kubernetes nodes |
| Grafana | Log visualization and querying |

### Logging Workflow

```
Kubernetes Pods
      ↓
Promtail Collects Logs
      ↓
Loki Stores Logs
      ↓
Grafana Visualizes Logs
```

Logs are collected from Spring Boot backend containers, frontend containers, and all Kubernetes workloads. Grafana Explore is used for pod log inspection, backend troubleshooting, error tracking, and runtime observability.

---

## Kubernetes Deployment

### Kubernetes Components

| Resource | Purpose |
|---|---|
| Deployments | Application workload lifecycle management |
| Services | Internal cluster networking |
| Ingress | External HTTP traffic routing |
| ConfigMaps | Environment and application configuration |
| Secrets | Sensitive data management |
| HPA | Automatic pod scaling based on CPU utilization |

### Workloads Deployed

Frontend Deployment, Backend Deployment, MySQL Deployment, Jenkins Deployment, Monitoring Stack (Prometheus, Grafana, Alertmanager), Logging Stack (Loki, Promtail).

### NGINX Ingress Controller

Handles HTTP routing, reverse proxying, external application access, and path-based routing for all services.

### Useful Commands

```bash
# View all pods across namespaces
kubectl get pods -A

# View all services
kubectl get svc -A

# View all deployments
kubectl get deployments -A

# View ingress rules
kubectl get ingress -A
```

---

## Infrastructure as Code

### AWS Services

| Service | Purpose |
|---|---|
| EC2 | Application server infrastructure |
| S3 | Remote Terraform state storage |
| DynamoDB | Terraform state locking |
| IAM | Cloud access and permission management |
| Security Groups | Network access control |

### Terraform Features

- Modular architecture with reusable modules
- Remote state backend with S3 and DynamoDB state locking
- Dynamic security group rule configuration
- EC2 provisioning automation
- Infrastructure version-controlled alongside application code

### Terraform Workflow

```bash
# Initialize backend and providers
terraform init

# Validate configuration syntax
terraform validate

# Preview planned changes
terraform plan

# Apply infrastructure changes
terraform apply
```

---

## Project Screenshots

### Docker Environment

**Docker Engine Running**
![Docker Running](docs/screenshots/docker/01-ecosmart-docker-running.png)

**Docker Containers**
![Docker Containers](docs/screenshots/docker/31-ecosmart-docker-containers.png)

**Docker Images**
![Docker Images](docs/screenshots/docker/32-ecosmart-docker-images.png)

---

### Kubernetes Cluster

**Minikube Cluster Status**
![Minikube Status](docs/screenshots/kubernetes/02-ecosmart-minikube-status.png)

**NGINX Ingress Controller**
![Ingress Controller](docs/screenshots/kubernetes/03-ecosmart-ingress-controller.png)

**Kubernetes Pods**
![Kubernetes Pods](docs/screenshots/kubernetes/04-ecosmart-kubernetes-pods.png)

**Kubernetes Services**
![Kubernetes Services](docs/screenshots/kubernetes/05-ecosmart-kubernetes-services.png)

**Kubernetes Deployments**
![Kubernetes Deployments](docs/screenshots/kubernetes/06-ecosmart-kubernetes-deployments.png)

**Kubernetes Ingress**
![Kubernetes Ingress](docs/screenshots/kubernetes/07-ecosmart-kubernetes-ingress.png)

**Horizontal Pod Autoscaler**
![HPA](docs/screenshots/kubernetes/18-ecosmart-hpa-scaling.png)

**Minikube Dashboard**
![Minikube Dashboard](docs/screenshots/kubernetes/39-ecosmart-minikube-dashboard.png)

---

### Jenkins CI/CD Pipeline

**Jenkins Dashboard**
![Jenkins Dashboard](docs/screenshots/jenkins/08-ecosmart-jenkins-dashboard.png)

**Successful Pipeline Execution**
![Jenkins Pipeline](docs/screenshots/jenkins/09-ecosmart-jenkins-pipeline-success.png)

**Jenkinsfile in Repository**
![Jenkinsfile](docs/screenshots/jenkins/34-ecosmart-github-jenkinsfile.png)

---

### Monitoring and Observability

**Grafana Dashboard**
![Grafana Dashboard](docs/screenshots/grafana/10-ecosmart-grafana-dashboard.png)

**JVM Monitoring Dashboard**
![JVM Dashboard](docs/screenshots/grafana/11-ecosmart-grafana-jvm-dashboard.png)

**Kubernetes Metrics Dashboard**
![Kubernetes Metrics](docs/screenshots/grafana/12-ecosmart-grafana-k8s-metrics.png)

**Prometheus Targets**
![Prometheus Targets](docs/screenshots/monitoring/13-ecosmart-prometheus-targets.png)

**Prometheus Queries**
![Prometheus Query](docs/screenshots/monitoring/14-ecosmart-prometheus-query.png)

**Alertmanager**
![Alertmanager](docs/screenshots/monitoring/15-ecosmart-alertmanager.png)

**Metrics Server**
![Metrics Server](docs/screenshots/monitoring/19-ecosmart-metrics-server.png)

**Ngrok Tunnel**
![Ngrok Tunnel](docs/screenshots/monitoring/36-ecosmart-ngrok-tunnel.png)

---

### Centralized Logging

**Loki and Promtail Stack**
![Loki Promtail](docs/screenshots/logging/16-ecosmart-loki-promtail.png)

**Loki Log Analysis**
![Loki Logs](docs/screenshots/logging/17-ecosmart-loki-logs.png)

---

### DevSecOps Security

**SonarQube Dashboard**
![SonarQube Dashboard](docs/screenshots/security/20-ecosmart-sonarqube-dashboard.png)

**SonarQube Quality Gate**
![SonarQube Quality Gate](docs/screenshots/security/21-ecosmart-sonarqube-quality-gate.png)

**SonarQube Static Analysis**
![SonarQube Analysis](docs/screenshots/security/22-ecosmart-sonarqube-analysis.png)

![SonarQube Analysis 2](docs/screenshots/security/22-ecosmart-sonarqube-analysis-2.png)

**Trivy Vulnerability Scan**
![Trivy Scan](docs/screenshots/security/23-ecosmart-trivy-scan.png)

**OWASP Dependency Check Report**
![OWASP Report](docs/screenshots/security/24-ecosmart-owasp-report.png)

![OWASP Report 2](docs/screenshots/security/24-ecosmart-owasp-report-2.png)

**AWS Security Group Configuration**
![AWS Security Group](docs/screenshots/security/30-ecosmart-aws-security-group.png)

---

### Terraform and AWS Infrastructure

**Terraform Plan**
![Terraform Plan](docs/screenshots/terraform/25-ecosmart-terraform-plan.png)

**Terraform Apply**
![Terraform Apply](docs/screenshots/terraform/26-ecosmart-terraform-apply.png)

**GitHub Repository**
![GitHub Repository](docs/screenshots/terraform/33-ecosmart-github-repo.png)

**Terraform GitHub Integration**
![Terraform GitHub](docs/screenshots/terraform/35-ecosmart-github-terraform.png)

**AWS EC2 Instance**
![AWS EC2](docs/screenshots/aws/27-ecosmart-aws-ec2.png)

**AWS S3 Terraform Backend**
![AWS S3](docs/screenshots/aws/28-ecosmart-aws-s3-backend.png)

**DynamoDB State Locking**
![AWS DynamoDB](docs/screenshots/aws/29-ecosmart-aws-dynamodb-lock.png)

---

### Application

**EcoSmart Frontend**
![EcoSmart Frontend](docs/screenshots/frontend/37-ecosmart-frontend-ui.png)

**Spring Boot Actuator Health Endpoint**
![Backend Health](docs/screenshots/backend/38-ecosmart-backend-health.png)

---

## Deployment Guide

### Clone the Repository

```bash
git clone https://github.com/errornotfound404ajit/Smart.git
cd Smart
```

### Start Docker

Ensure Docker Desktop is running before proceeding.

```bash
docker ps
```

### Start Minikube

```bash
minikube start --driver=docker
kubectl get nodes
```

### Enable Kubernetes Addons

```bash
minikube addons enable ingress
minikube addons enable metrics-server
```

### Deploy Kubernetes Resources

```bash
kubectl apply -R -f kubernetes/
kubectl get pods -A
```

### Access the Frontend

```bash
kubectl port-forward svc/frontend-service 8081:80 -n smart-devops
```

Open `http://localhost:8081`

### Access the Backend Health Endpoint

```bash
kubectl port-forward svc/backend-service 8085:8081 -n smart-devops
```

Open `http://localhost:8085/actuator/health`

---

## Monitoring Setup

### Install the Monitoring Stack

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring
```

### Access Grafana

```bash
kubectl port-forward -n monitoring svc/monitoring-grafana 3000:80
```

Open `http://localhost:3000`

### Access Prometheus

```bash
kubectl port-forward -n monitoring svc/prometheus-operated 9091:9090
```

Open `http://localhost:9091`

---

## Logging Setup

### Install the Loki Stack

```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install loki grafana/loki-stack -n monitoring
```

### View Logs in Grafana

Open Grafana Explore and select the Loki datasource. Example LogQL query:

```logql
{namespace="smart-devops"}
```

---

## Troubleshooting

### Pods Stuck in Pending State

```bash
kubectl get nodes
kubectl get pods -A
minikube stop && minikube start --driver=docker
```

### Grafana Dashboard Not Accessible

```bash
kubectl get pods -n monitoring
kubectl port-forward -n monitoring svc/monitoring-grafana 3000:80
```

### Prometheus Targets Down

```bash
kubectl get servicemonitor -A
kubectl apply -f kubernetes/monitoring/
```

### Jenkins Pipeline Failure

```bash
kubectl logs deployment/jenkins
kubectl rollout restart deployment jenkins
```

### Docker Image Pull Issues

```bash
docker images
minikube image load IMAGE_NAME
```

### Terraform Backend Errors

```bash
terraform init -reconfigure
aws configure
```

### Loki Logs Not Visible

```bash
kubectl get pods -n monitoring
helm install loki grafana/loki-stack -n monitoring
```

---

## Future Enhancements

- Deploy to managed Kubernetes (AWS EKS)
- Implement GitHub Actions workflow alongside Jenkins
- Add ArgoCD for GitOps-based continuous delivery
- Integrate HashiCorp Vault for secrets management
- Configure SSL/TLS using cert-manager
- Implement distributed tracing with Jaeger
- Add Slack and email alert integrations
- Implement blue-green and canary deployment strategies
- Add Kubernetes Network Policies for micro-segmentation
- Package all workloads as Helm charts
- Integrate Falco for runtime security monitoring
- Harden Kubernetes with RBAC policies
- Add a Redis caching layer
- Configure autoscaling using custom application metrics
- Implement a multi-environment strategy (Dev / Staging / Prod)

---

## Lessons Learned

This project provided end-to-end hands-on experience across the full DevSecOps stack, including:

- Designing and implementing a complete CI/CD pipeline from source to production
- Kubernetes orchestration, networking, and autoscaling in a Minikube environment
- Infrastructure as Code using Terraform with remote state management on AWS
- Integrating security scanning (SAST, SCA, container scanning) into CI/CD pipelines
- Building a cloud-native observability stack with Prometheus, Grafana, and Alertmanager
- Implementing centralized log aggregation with Loki and Promtail
- Configuring Kubernetes Ingress, Secrets, ConfigMaps, and RBAC
- Troubleshooting distributed systems across cloud-native infrastructure layers

---

## Author

**Ajit**

DevOps and Cloud Engineering professional focused on DevSecOps automation, Kubernetes orchestration, Infrastructure as Code, cloud-native monitoring, and CI/CD pipeline design.

GitHub: [github.com/errornotfound404ajit/Ecosmart-devsecops-platform](https://github.com/errornotfound404ajit/Ecosmart-devsecops-platform)

---

If you found this project valuable, consider starring the repository to support the work and help others discover it.
