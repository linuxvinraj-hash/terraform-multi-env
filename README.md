# Terraform Multi-Environment AWS Infrastructure

## 📌 Overview
This project demonstrates how to build and manage **multi-environment AWS infrastructure**
(Dev, Stage, Prod) using **Terraform best practices**.

Each environment is:
- Fully isolated
- Uses remote state
- Shares reusable Terraform modules

---

## 🏗️ Architecture
Each environment provisions:
- VPC
- Public Subnet
- EC2 Instance
- Security Groups

Infrastructure is deployed using reusable Terraform modules.

---

## 📂 Folder Structure

terraform-multi-env-aws/
├── modules/        # Reusable Terraform modules
├── envs/           # Environment-specific configurations
│   ├── dev
│   ├── stage
│   └── prod
└── diagrams/       # Architecture diagrams

---

## 🌍 Environments

| Environment | Instance Type |
|------------|---------------|
| Dev | t2.micro |
| Stage | t3.small |
| Prod | t3.medium |

---

## 🔐 Remote State Management
- **S3** for Terraform state storage
- **DynamoDB** for state locking
- Separate state file per environment

---



