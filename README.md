# 🎵 Stephanie Keys Cloud Infrastructure & DevOps Platform

[![CI/CD Pipeline](https://github.com/shdevvv/stephanie-keys-cloud/actions/workflows/ci.yml/badge.svg)](https://github.com/shdevvv/stephanie-keys-cloud/actions)
![AWS Infrastructure](https://img.shields.io/badge/AWS-VPC%20%7C%20RDS%20%7C%20ALB-orange)
![Terraform](https://img.shields.io/badge/IaC-Terraform%201.5-blueviolet)
![Docker](https://img.shields.io/badge/Container-Docker%20%26%20Compose-blue)

A production-grade, highly available, and automated cloud infrastructure environment for the **Stephanie Keys Music Platform**. Built using modern DevOps standards including Infrastructure as Code (IaC), container orchestration, automated CI/CD pipelines, and observability.

---

## 🏗️ System Architecture

                  [ Internet Traffic ]
                            │
                            ▼
               [ Application Load Balancer ]
                            │
         ┌──────────────────┴──────────────────┐
         ▼                                     ▼
 [ Public Subnet A ]                   [ Public Subnet B ]
(Frontend - React Vite)               (Frontend - React Vite)
│                                     │
└──────────────────┬──────────────────┘
│
▼
┌─────────────────────────────────────┐
│          [ Private Subnets ]        │
│   Backend API (.NET 10 ASP.NET Core)│
└──────────────────┬──────────────────┘
│
▼
[ AWS RDS PostgreSQL 16 ]


---

## 🛠️ Tech Stack & Key Components

* **Application Stack:** .NET 10 ASP.NET Core Web API, React Vite Frontend, PostgreSQL 16.
* **Containerization:** Docker, Multi-stage builds, Docker Compose.
* **Infrastructure as Code (IaC):** Terraform (AWS VPC, Public/Private Subnets, Security Groups, ALB, RDS).
* **CI/CD Pipeline:** GitHub Actions (`ci.yml` & `cd.yml`) for automated linting, testing, and container verification.
* **Observability & Monitoring:** Prometheus (metrics collection) & Grafana (dashboard visualization).

---

## 🚀 Quick Start (Local Development)

1. **Clone Repository with Submodules:**
   ```bash
   git clone --recursive [https://github.com/shdevvv/stephanie-keys-cloud.git](https://github.com/shdevvv/stephanie-keys-cloud.git)
   cd stephanie-keys-cloud
Run Application Stack with Docker Compose:

Bash
cd docker
docker compose up --build -d
Frontend: http://localhost:80

Backend API: http://localhost:5013

PostgreSQL: localhost:5432

Run Monitoring Stack (Prometheus & Grafana):

Bash
cd ../monitoring
docker compose -f docker-compose.monitoring.yml up -d
Prometheus UI: http://localhost:9090

Grafana Dashboard: http://localhost:3000

 