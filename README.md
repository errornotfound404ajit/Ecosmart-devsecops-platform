<div align="center">

# EcoSmart — Cloud-Native Enterprise DevSecOps Platform

### *A Production-Grade Smart Home DevSecOps Platform*

**A complete end-to-end cloud-native DevSecOps project implementing CI/CD automation, Infrastructure as Code (IaC), Kubernetes orchestration, monitoring, logging, security scanning, and automated deployment pipelines using modern DevOps tools and practices.**

<br/>

[![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?style=for-the-badge&logo=terraform)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws)](https://aws.amazon.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-326CE5?style=for-the-badge&logo=kubernetes)](https://kubernetes.io/)
[![Docker](https://img.shields.io/badge/Docker-Containers-2496ED?style=for-the-badge&logo=docker)](https://www.docker.com/)
[![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-D24939?style=for-the-badge&logo=jenkins)](https://www.jenkins.io/)
[![Grafana](https://img.shields.io/badge/Grafana-Monitoring-F46800?style=for-the-badge&logo=grafana)](https://grafana.com/)
[![Prometheus](https://img.shields.io/badge/Prometheus-Metrics-E6522C?style=for-the-badge&logo=prometheus)](https://prometheus.io/)
[![Loki](https://img.shields.io/badge/Loki-Logging-0A84FF?style=for-the-badge)](https://grafana.com/oss/loki/)
[![Trivy](https://img.shields.io/badge/Trivy-Security-blue?style=for-the-badge)](https://trivy.dev/)
[![SonarQube](https://img.shields.io/badge/SonarQube-Code%20Quality-4E9BCD?style=for-the-badge&logo=sonarqube)](https://www.sonarqube.org/)

<br/>

> **"Don't just deploy your infrastructure — secure it, monitor it, and automate everything."**
>
> EcoSmart demonstrates a complete enterprise DevSecOps lifecycle: from a developer's first commit to a fully monitored, security-scanned, auto-scaling Kubernetes deployment on AWS — powered by Jenkins, Terraform, Prometheus, Grafana, and Loki.

<br/>

[Documentation](#deployment-guide) · [Issues](https://github.com/errornotfound404ajit/Ecosmart-devsecops-platform/issues) · [Discussions](https://github.com/errornotfound404ajit/Ecosmart-devsecops-platform/discussions)

</div>

---

<p align="center">
  <img src="docs/screenshots/frontend/37-ecosmart-frontend-ui.png" width="90%" alt="EcoSmart Frontend UI" />
</p>

---

## Table of Contents

- [Overview](#project-overview)
- [Key Features](#key-features)
- [System Architecture](#system-architecture)
- [Technology Stack](#technology-stack)
- [CI/CD Pipeline Workflow](#cicd-pipeline-workflow)
- [DevSecOps Security Workflow](#devsecops-security-workflow)
- [Monitoring & Observability](#monitoring--observability)
- [Centralized Logging](#centralized-logging)
- [Kubernetes Deployment](#kubernetes-deployment)
- [Infrastructure as Code](#infrastructure-as-code-terraform--aws)
- [Project Structure](#project-structure)
- [Screenshots](#project-screenshots)
- [Deployment Guide](#deployment-guide)
- [Monitoring Setup](#monitoring-setup)
- [Logging Setup](#logging-setup)
- [Troubleshooting Guide](#troubleshooting-guide)
- [Future Enhancements](#future-enhancements)
- [Lessons Learned](#lessons-learned)
- [Author](#author)

---

## Project Overview

**EcoSmart** is a production-grade DevSecOps platform for deploying and managing a Smart Home Management application using enterprise-level tools and cloud-native technologies.

The platform integrates:

- CI/CD automation with Jenkins
- Infrastructure provisioning using Terraform
- Containerization with Docker
- Kubernetes orchestration with Minikube
- Monitoring with Prometheus & Grafana
- Logging with Loki & Promtail
- Security scanning using Trivy, SonarQube, and OWASP Dependency Check
- AWS cloud infrastructure deployment
- Automated scaling using HPA
- GitHub webhook-triggered deployment pipelines

This project was designed to simulate a real-world enterprise DevSecOps environment.

### Why This Project Matters

| Challenge | Solution |
|-----------|----------|
| Manual security reviews happen too late in the cycle | Shift-left scanning with SonarQube, Trivy, and OWASP integrated directly into the CI pipeline |
| Infrastructure drift causes production mismatches | Terraform IaC with remote S3 state and DynamoDB locking ensures reproducible environments |
| Debugging Kubernetes failures requires deep expertise | Centralized Loki logging + Prometheus alerts surface issues before they escalate |
| Scaling manually under load is reactive and error-prone | HPA automatically scales backend pods based on live CPU metrics |
| Jenkins pipelines are hard to audit and reproduce | Jenkinsfile-driven pipelines stored in source control with full GitHub webhook integration |

---

## Key Features

### CI/CD Automation
- Automated Jenkins pipeline execution
- GitHub webhook-triggered deployments
- Continuous Integration & Continuous Deployment workflow
- Automated Docker image builds
- Automated Kubernetes deployments

---

### Infrastructure as Code (IaC)
- Terraform-based AWS infrastructure provisioning
- Remote Terraform state management using S3
- State locking using DynamoDB
- Modular Terraform architecture
- Automated EC2 provisioning

---

### Containerization & Orchestration
- Dockerized backend and frontend services
- Kubernetes-based container orchestration
- NGINX Ingress Controller integration
- Kubernetes deployments, services, and ingress management
- Horizontal Pod Autoscaler (HPA) implementation

---

### DevSecOps & Security
- SonarQube static code analysis
- Trivy container image vulnerability scanning
- OWASP Dependency Check integration
- Secure secret handling using Kubernetes Secrets
- Automated security scanning in CI/CD pipeline

---

### Monitoring & Observability
- Prometheus metrics collection
- Grafana dashboard visualization
- Spring Boot Actuator integration
- Loki centralized logging
- Promtail log collection
- Alertmanager alert management
- Kubernetes metrics monitoring

---

### Cloud & Deployment
- AWS EC2 deployment
- S3 backend storage for Terraform state
- DynamoDB state locking
- Kubernetes-based deployment architecture
- Scalable cloud-native infrastructure

---

## System Architecture

The project follows a complete cloud-native DevSecOps workflow integrating CI/CD automation, Infrastructure as Code, Kubernetes orchestration, security scanning, monitoring, and centralized logging.

### End-to-End DevSecOps Workflow

```text
Developer → GitHub → Jenkins CI/CD Pipeline → Security Scanning → Docker Build → Terraform Infrastructure → Kubernetes Deployment → Monitoring & Logging
```

### Architecture Diagram

```text
                                ┌────────────────────┐
                                │     Developer      │
                                └─────────┬──────────┘
                                          │
                                          ▼
                                ┌────────────────────┐
                                │      GitHub        │
                                │ Source Code Mgmt   │
                                └─────────┬──────────┘
                                          │ Webhook Trigger
                                          ▼
                                ┌────────────────────┐
                                │      Jenkins       │
                                │    CI/CD Server    │
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
                                          ▼
                        ┌────────────────────────────────┐
                        │             AWS                │
                        │ EC2 | S3 | DynamoDB | IAM     │
                        └────────────────────────────────┘
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
                     │ Prometheus + Grafana           │
                     │ Alertmanager + Metrics Server  │
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
- Automated CI/CD pipeline with Jenkins
- Kubernetes-native deployment workflow
- Infrastructure provisioning using Terraform
- Integrated DevSecOps security scanning
- Cloud-native observability stack
- Centralized logging architecture
- AWS remote Terraform backend configuration

---

## Technology Stack

### Application Layer

| Category | Technologies |
|----------|-------------|
| Programming Languages | Java, JavaScript |
| Backend Framework | Spring Boot |
| Frontend Framework | React + Vite |
| Build Tools | Maven, npm |
| Database | MySQL |

### DevOps & Infrastructure

| Category | Technologies |
|----------|-------------|
| Containerization | Docker, Docker Compose, NGINX |
| Container Orchestration | Kubernetes, Minikube |
| CI/CD | Jenkins, GitHub Webhooks |
| Infrastructure as Code | Terraform |
| Cloud Provider | AWS |
| AWS Services | EC2, S3, DynamoDB, IAM, Security Groups |
| Networking | NGINX Ingress Controller, Ngrok |
| Scaling | HPA, Metrics Server |
| Project Management | Jira |

### Observability Stack

| Category | Technologies |
|----------|-------------|
| Monitoring | Prometheus, Grafana, Alertmanager |
| Logging | Loki, Promtail |

### Security

| Category | Technologies |
|----------|-------------|
| Security | Trivy, SonarQube, OWASP Dependency Check |

---

## CI/CD Pipeline Workflow

The project implements a fully automated Jenkins-based CI/CD pipeline integrated with GitHub webhooks.

### Pipeline Flow

```text
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
Frontend Build (npm/vite)
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
Monitoring & Logging Integration
```

### Jenkins Pipeline Stages

| Stage | Purpose |
|-------|---------|
| Checkout | Pull latest code from GitHub |
| Backend Build | Build Spring Boot application |
| Frontend Build | Build React/Vite frontend |
| SonarQube Analysis | Static code quality scanning |
| Dependency Check | Dependency vulnerability analysis |
| Docker Build | Build application container images |
| Trivy Scan | Container vulnerability scanning |
| Terraform Init | Initialize Terraform backend |
| Terraform Plan | Infrastructure planning |
| Terraform Apply | Infrastructure provisioning |
| Kubernetes Deploy | Deploy workloads to Kubernetes |
| Monitoring Integration | Prometheus/Grafana monitoring |

---

## DevSecOps Security Workflow

Security was integrated throughout the CI/CD lifecycle following DevSecOps best practices.

### Security Implementations

#### SonarQube Static Code Analysis
- Code quality inspection
- Bug detection
- Code smell identification
- Security hotspot analysis
- Quality Gate enforcement

---

#### OWASP Dependency Check
- Dependency vulnerability analysis
- CVE identification
- Supply chain security scanning
- Vulnerable package detection

---

#### Trivy Container Scanning
- Docker image vulnerability scanning
- OS package scanning
- Secret scanning
- Misconfiguration detection

---

#### Kubernetes Security
- Kubernetes Secrets for sensitive data
- Namespace isolation
- Secure container deployment practices

---

### Shift-Left Security

Security scanning is integrated directly into the CI/CD pipeline before deployment, ensuring vulnerabilities are detected early in the software delivery lifecycle.

---

## Monitoring & Observability

The project implements a complete cloud-native observability stack for monitoring application health, Kubernetes workloads, infrastructure metrics, and centralized logging.

### Monitoring Stack

| Tool | Purpose |
|------|---------|
| Prometheus | Metrics collection |
| Grafana | Metrics visualization |
| Alertmanager | Alert handling & routing |
| Spring Boot Actuator | Application health & metrics |
| Micrometer | Prometheus metrics integration |
| kube-state-metrics | Kubernetes object metrics |
| Metrics Server | Kubernetes resource metrics |
| HPA | Horizontal pod autoscaling |

### Metrics Collected

#### Application Metrics
- JVM memory usage
- CPU utilization
- HTTP request count
- Request latency
- Active threads
- Garbage collection metrics

#### Kubernetes Metrics
- Pod health
- Deployment status
- Resource utilization
- Node metrics
- Cluster health

### Alerting

Prometheus Alert Rules and Alertmanager were configured to monitor:

- Service availability
- Pod health
- Kubernetes target failures
- Resource usage thresholds
- Backend service downtime

### Grafana Dashboards

Grafana dashboards were created for:

- JVM monitoring
- Kubernetes monitoring
- Application performance metrics
- Resource utilization
- Prometheus targets
- Infrastructure observability

---

## Centralized Logging

The project implements centralized Kubernetes logging using Loki and Promtail.

### Logging Stack

| Tool | Purpose |
|------|---------|
| Loki | Log aggregation |
| Promtail | Log collection agent |
| Grafana | Log visualization |

### Logging Workflow

```text
Kubernetes Pods
        ↓
Promtail Collects Logs
        ↓
Loki Stores Logs
        ↓
Grafana Visualizes Logs
```

### Log Sources

Logs are collected from:

- Spring Boot backend containers
- Frontend containers
- Kubernetes workloads
- Cluster services

### Log Analysis

Grafana Explore was used for:

- Pod log inspection
- Backend troubleshooting
- Kubernetes debugging
- Error tracking
- Runtime observability

---

## Kubernetes Deployment

The application was deployed using Kubernetes on Minikube with production-style deployment architecture.

### Kubernetes Components

| Resource | Purpose |
|----------|---------|
| Deployments | Application workload management |
| Services | Internal networking |
| Ingress | External traffic routing |
| ConfigMaps | Environment configuration |
| Secrets | Sensitive data management |
| HPA | Automatic pod scaling |

### Workloads Deployed

- Frontend Deployment
- Backend Deployment
- MySQL Deployment
- Jenkins Deployment
- Monitoring Stack
- Logging Stack

### Ingress Controller

NGINX Ingress Controller was used for:

- HTTP routing
- Reverse proxy
- External application access
- Path-based routing

### Horizontal Pod Autoscaler (HPA)

HPA was configured to automatically scale backend pods based on CPU utilization metrics.

### Kubernetes Commands

```bash
# View Pods
kubectl get pods -A

# View Services
kubectl get svc -A

# View Deployments
kubectl get deployments -A

# View Ingress
kubectl get ingress -A
```

---

## Infrastructure as Code (Terraform + AWS)

Terraform was used to provision and manage AWS cloud infrastructure following Infrastructure as Code (IaC) best practices.

### AWS Services Used

| AWS Service | Purpose |
|-------------|---------|
| EC2 | Application infrastructure |
| S3 | Remote Terraform state storage |
| DynamoDB | Terraform state locking |
| IAM | Cloud access management |
| Security Groups | Network security |

### Terraform Features Implemented

- Modular Terraform architecture
- Remote state backend
- State locking with DynamoDB
- Dynamic security group rules
- EC2 provisioning automation
- Infrastructure version control

### Terraform Workflow

```text
Terraform Init
        ↓
Terraform Validate
        ↓
Terraform Plan
        ↓
Terraform Apply
        ↓
AWS Infrastructure Provisioned
```

### Remote State Management

Terraform remote backend was configured using:

- S3 bucket for centralized state storage
- DynamoDB table for state locking
- Encrypted Terraform state management

### Terraform Commands

```bash
# Initialize Terraform
terraform init

# Validate Configuration
terraform validate

# Plan Infrastructure
terraform plan

# Apply Infrastructure
terraform apply
```

---

## Project Structure

```text
EcoSmart/
│
├── backend/                         # Spring Boot backend application
├── frontend/                        # React + Vite frontend application
│
├── kubernetes/                      # Kubernetes manifests
│   ├── backend/
│   ├── frontend/
│   ├── ingress/
│   ├── monitoring/
│   └── mysql/
│
├── terraform/                       # Terraform Docker provisioning
├── terraform-aws/                   # Terraform AWS infrastructure
│   └── modules/
│       └── ec2/
│
├── docs/                            # Project documentation
│   ├── architecture/
│   ├── diagrams/
│   ├── monitoring/
│   ├── pipeline/
│   ├── security/
│   ├── setup-guides/
│   └── screenshots/
│
├── Jenkinsfile                      # CI/CD pipeline definition
├── docker-compose.yml               # Local multi-container setup
├── README.md                        # Main project documentation
└── .gitignore
```

---

## Project Screenshots

This section showcases the complete DevSecOps workflow, infrastructure provisioning, Kubernetes orchestration, monitoring, logging, and security automation implemented in the EcoSmart platform.

---

# Docker Environment

## Docker Engine Running

![Docker Running](docs/screenshots/docker/01-ecosmart-docker-running.png)

---

## Docker Containers

![Docker Containers](docs/screenshots/docker/31-ecosmart-docker-containers.png)

---

## Docker Images

![Docker Images](docs/screenshots/docker/32-ecosmart-docker-images.png)

---

# Kubernetes Cluster Setup

## Minikube Cluster Status

![Minikube Status](docs/screenshots/kubernetes/02-ecosmart-minikube-status.png)

---

## NGINX Ingress Controller

![Ingress Controller](docs/screenshots/kubernetes/03-ecosmart-ingress-controller.png)

---

## Kubernetes Pods

![Kubernetes Pods](docs/screenshots/kubernetes/04-ecosmart-kubernetes-pods.png)

---

## Kubernetes Services

![Kubernetes Services](docs/screenshots/kubernetes/05-ecosmart-kubernetes-services.png)

---

## Kubernetes Deployments

![Kubernetes Deployments](docs/screenshots/kubernetes/06-ecosmart-kubernetes-deployments.png)

---

## Kubernetes Ingress

![Kubernetes Ingress](docs/screenshots/kubernetes/07-ecosmart-kubernetes-ingress.png)

---

## Horizontal Pod Autoscaler (HPA)

![HPA](docs/screenshots/kubernetes/18-ecosmart-hpa-scaling.png)

---

## Minikube Dashboard

![Minikube Dashboard](docs/screenshots/kubernetes/39-ecosmart-minikube-dashboard.png)

---

# Jenkins CI/CD Pipeline

## Jenkins Dashboard

![Jenkins Dashboard](docs/screenshots/jenkins/08-ecosmart-jenkins-dashboard.png)

---

## Successful Jenkins Pipeline Execution

![Jenkins Pipeline](docs/screenshots/jenkins/09-ecosmart-jenkins-pipeline-success.png)

---

## Jenkinsfile Repository Integration

![Jenkinsfile](docs/screenshots/jenkins/34-ecosmart-github-jenkinsfile.png)

---

# Monitoring & Observability

## Grafana Dashboard

![Grafana Dashboard](docs/screenshots/grafana/10-ecosmart-grafana-dashboard.png)

---

## JVM Monitoring Dashboard

![JVM Dashboard](docs/screenshots/grafana/11-ecosmart-grafana-jvm-dashboard.png)

---

## Kubernetes Metrics Dashboard

![Kubernetes Metrics](docs/screenshots/grafana/12-ecosmart-grafana-k8s-metrics.png)

---

## Prometheus Targets

![Prometheus Targets](docs/screenshots/monitoring/13-ecosmart-prometheus-targets.png)

---

## Prometheus Queries

![Prometheus Query](docs/screenshots/monitoring/14-ecosmart-prometheus-query.png)

---

## Alertmanager

![Alertmanager](docs/screenshots/monitoring/15-ecosmart-alertmanager.png)

---

## Metrics Server

![Metrics Server](docs/screenshots/monitoring/19-ecosmart-metrics-server.png)

---

## Ngrok Tunnel

![Ngrok Tunnel](docs/screenshots/monitoring/36-ecosmart-ngrok-tunnel.png)

---

# Centralized Logging

## Loki & Promtail Stack

![Loki Promtail](docs/screenshots/logging/16-ecosmart-loki-promtail.png)

---

## Loki Log Analysis

![Loki Logs](docs/screenshots/logging/17-ecosmart-loki-logs.png)

---

# DevSecOps Security

## SonarQube Dashboard

![SonarQube Dashboard](docs/screenshots/security/20-ecosmart-sonarqube-dashboard.png)

---

## SonarQube Quality Gate

![SonarQube Quality Gate](docs/screenshots/security/21-ecosmart-sonarqube-quality-gate.png)

---

## SonarQube Static Analysis

![SonarQube Analysis](docs/screenshots/security/22-ecosmart-sonarqube-analysis.png)

---

## Additional SonarQube Analysis

![SonarQube Analysis 2](docs/screenshots/security/22-ecosmart-sonarqube-analysis-2.png)

---

## Trivy Vulnerability Scan

![Trivy Scan](docs/screenshots/security/23-ecosmart-trivy-scan.png)

---

## OWASP Dependency Check Report

![OWASP Report](docs/screenshots/security/24-ecosmart-owasp-report.png)

---

## Additional OWASP Report

![OWASP Report 2](docs/screenshots/security/24-ecosmart-owasp-report-2.png)

---

## AWS Security Group Configuration

![AWS Security Group](docs/screenshots/security/30-ecosmart-aws-security-group.png)

---

# Terraform & AWS Infrastructure

## Terraform Plan

![Terraform Plan](docs/screenshots/terraform/25-ecosmart-terraform-plan.png)

---

## Terraform Apply

![Terraform Apply](docs/screenshots/terraform/26-ecosmart-terraform-apply.png)

---

## GitHub Repository

![GitHub Repository](docs/screenshots/terraform/33-ecosmart-github-repo.png)

---

## Terraform GitHub Integration

![Terraform GitHub](docs/screenshots/terraform/35-ecosmart-github-terraform.png)

---

# AWS Infrastructure

## AWS EC2 Instance

![AWS EC2](docs/screenshots/aws/27-ecosmart-aws-ec2.png)

---

## AWS S3 Terraform Backend

![AWS S3](docs/screenshots/aws/28-ecosmart-aws-s3-backend.png)

---

## DynamoDB Terraform State Locking

![AWS DynamoDB](docs/screenshots/aws/29-ecosmart-aws-dynamodb-lock.png)

---

# Application UI

## EcoSmart Frontend Application

![EcoSmart Frontend](docs/screenshots/frontend/37-ecosmart-frontend-ui.png)

---

# Backend Health Monitoring

## Spring Boot Actuator Health Endpoint

![Backend Health](docs/screenshots/backend/38-ecosmart-backend-health.png)

---

## Deployment Guide

### Prerequisites

Ensure the following tools are installed:

| Tool | Purpose |
|------|---------|
| Docker Desktop | Container runtime |
| kubectl | Kubernetes CLI |
| Minikube | Local Kubernetes cluster |
| Helm | Kubernetes package manager |
| Terraform | Infrastructure as Code |
| AWS CLI | Cloud provider access |
| Git | Source control |

### Clone Repository

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

# Verify cluster
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

# Verify workloads
kubectl get pods -A
```

### Access Frontend

```bash
kubectl port-forward svc/frontend-service 8081:80 -n smart-devops
```

Open: `http://localhost:8081`

### Access Backend Health Endpoint

```bash
kubectl port-forward svc/backend-service 8085:8081 -n smart-devops
```

Open: `http://localhost:8085/actuator/health`

---

## Monitoring Setup

### Install Monitoring Stack

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

Open: `http://localhost:3000`

### Access Prometheus

```bash
kubectl port-forward -n monitoring svc/prometheus-operated 9091:9090
```

Open: `http://localhost:9091`

---

## Logging Setup

### Install Loki Stack

```bash
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install loki grafana/loki-stack -n monitoring
```

### View Logs in Grafana

Open Grafana Explore and select the Loki datasource.

Example LogQL query:

```logql
{namespace="smart-devops"}
```

---

## Troubleshooting Guide

### Kubernetes Pods Stuck in Pending

```bash
# Verify cluster status
kubectl get nodes
kubectl get pods -A

# Restart Minikube
minikube stop
minikube start --driver=docker
```

### Grafana Dashboard Not Accessible

```bash
# Verify monitoring namespace
kubectl get pods -n monitoring

# Restart port-forward
kubectl port-forward -n monitoring svc/monitoring-grafana 3000:80
```

### Prometheus Targets Down

```bash
# Verify ServiceMonitor
kubectl get servicemonitor -A

# Reapply monitoring manifests
kubectl apply -f kubernetes/monitoring/
```

### Jenkins Pipeline Failure

```bash
# Verify Jenkins logs
kubectl logs deployment/jenkins

# Restart Jenkins deployment
kubectl rollout restart deployment jenkins
```

### Docker Image Pull Issues

```bash
# Verify local Docker images
docker images

# Load image into Minikube
minikube image load IMAGE_NAME
```

### Terraform Backend Errors

```bash
# Reinitialize Terraform
terraform init -reconfigure

# Verify AWS credentials
aws configure
```

### Loki Logs Not Visible

```bash
# Verify Loki & Promtail
kubectl get pods -n monitoring

# Reinstall Loki stack
helm install loki grafana/loki-stack -n monitoring
```

---

## Future Enhancements

| Feature | Description |
|---------|-------------|
| Managed Kubernetes (EKS) | Deploy application on AWS EKS for production-grade cluster management |
| GitHub Actions | Implement GitHub Actions as an alternative CI/CD workflow |
| ArgoCD GitOps | Add ArgoCD for declarative continuous delivery from Git |
| HashiCorp Vault | Integrate Vault for enterprise-grade secrets management |
| SSL/TLS via cert-manager | Configure HTTPS with automated certificate provisioning |
| Redis Caching | Add a Redis caching layer to improve API response performance |
| Distributed Tracing (Jaeger) | Implement centralized tracing across all microservices |
| Slack/Email Alerts | Add notification integrations for Alertmanager alerts |
| Blue-Green & Canary Deployments | Implement advanced deployment strategies for zero-downtime releases |
| Kubernetes Network Policies | Harden cluster networking with namespace-level isolation policies |
| Helm Chart Packaging | Package the full stack for one-command deployment via Helm |
| Falco Runtime Security | Integrate Falco for real-time runtime threat detection |
| Kubernetes RBAC Hardening | Implement fine-grained role-based access control |
| Custom Metrics Autoscaling | Configure HPA on application-level custom metrics |
| Multi-Environment Strategy | Implement Dev/Staging/Prod deployment pipeline |

---

## Lessons Learned

- Learned end-to-end DevSecOps workflow implementation
- Gained hands-on experience with Kubernetes orchestration
- Understood Infrastructure as Code using Terraform
- Implemented real-world CI/CD pipelines using Jenkins
- Integrated security scanning into CI/CD lifecycle
- Learned cloud-native monitoring and observability practices
- Implemented centralized Kubernetes logging
- Understood Docker containerization workflows
- Configured Kubernetes ingress and networking
- Learned Terraform remote state management
- Implemented Kubernetes autoscaling using HPA
- Gained troubleshooting experience across cloud-native systems

---

## Author

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/errornotfound404ajit">
        <img src="https://github.com/errornotfound404ajit.png" width="100px;" alt="Ajit"/><br />
        <sub><b>Ajit</b></sub>
      </a><br />
      <sub>Project Author · DevOps · DevSecOps · Cloud Engineering</sub>
    </td>
  </tr>
</table>

DevOps & Cloud Engineering Enthusiast passionate about:

- DevOps Automation
- Kubernetes
- Cloud Infrastructure
- Infrastructure as Code
- Monitoring & Observability
- DevSecOps
- CI/CD Automation
- Cloud-Native Engineering

**GitHub:** [errornotfound404ajit](https://github.com/errornotfound404ajit/Ecosmart-devsecops-platform)

---

<div align="center">

**Built end-to-end — Local → Docker → Kubernetes → AWS → DevSecOps**

*From first commit to a fully monitored, security-scanned, auto-scaling production deployment.*

[![Star this repo](https://img.shields.io/github/stars/errornotfound404ajit/Ecosmart-devsecops-platform?style=social)](https://github.com/errornotfound404ajit/Ecosmart-devsecops-platform)

</div>
