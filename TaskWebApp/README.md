.

# 🚀 Project 1: End-to-End CI/CD Pipeline on AWS  
### (Git → Build → Test → Deploy)

## 📌 Introduction
This project demonstrates a **fully automated, end-to-end CI/CD pipeline** using **AWS native DevOps services**.  
The pipeline pulls source code from GitHub, builds and tests the application, and deploys it to an EC2 instance automatically.

This project follows **real-world DevOps best practices** and showcases AWS CI/CD architecture used in production environments.

---

## 📑 Table of Contents
- Architecture Overview
- What You Will Build
- AWS & DevOps Concepts Used
- Prerequisites
- Step-by-Step Implementation
- Project Structure
- CI/CD Flow
- Troubleshooting
- Security Best Practices
- References


---

## 🏗 Architecture Overview

```
GitHub → AWS CodePipeline → AWS CodeBuild → AWS CodeDeploy → EC2
↓
S3 (Artifacts)
```

---

## 🎯 What You Will Build
A complete CI/CD pipeline that automatically:

- Pulls code from GitHub
- Builds the application
- Runs unit tests
- Stores artifacts in S3
- Deploys the application to EC2 using CodeDeploy

---

## ☁ AWS & DevOps Concepts Used
- AWS CodePipeline
- AWS CodeBuild
- AWS CodeDeploy
- IAM Roles & Policies
- Amazon EC2
- Amazon S3 (Artifacts)
- CI/CD Principles

---

## ✅ Prerequisites
- AWS Account
- GitHub Account
- Basic knowledge of:
  - Linux
  - Git
  - AWS IAM
  - CI/CD concepts
- Sample application (Node.js / Java)

---

## 🛠 Step-by-Step Implementation

### 1️⃣ Source Setup
1. Create a GitHub repository
2. Add a sample Node.js or Java application
3. Add a `buildspec.yml` file

#### Example `buildspec.yml`
```yaml

```
## 2️⃣ IAM Configuration

* Create IAM roles with least-privilege access:

- CodePipeline Role

- CodeBuild Role

- CodeDeploy Role

- EC2 Instance Role

- Permissions include:

- S3 access for artifacts

- CloudWatch logs

- CodeBuild and CodeDeploy permissions

## 3️⃣ Artifact Storage

- Create an S3 bucket

- Enable versioning (recommended)

- Use the bucket for pipeline artifacts

## 4️⃣ Build Stage

- Create a CodeBuild project

- Connect GitHub as the source

* Configure:

- Linux environment

- Managed image

- Runtime ( Java)

_ Run dependency installation and unit tests

## 5️⃣ Deploy Stage
* EC2 Setup

- Launch an EC2 instance

- Install CodeDeploy agent
```sh
sudo yum update -y
sudo yum install ruby wget -y
wget https://aws-codedeploy-region.s3.region.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
```

##Deployment Configuration
Example appspec.yml
```yml
```

## 6️⃣ Pipeline Orchestration

- Create AWS CodePipeline

* Add stages:
 
- Source (GitHub)

- Build (CodeBuild)

- Deploy (CodeDeploy)

- Connect all stages

- Trigger pipeline on every Git commit

## 📂 Project Structure
.
├── appspec.yml
├── buildspec.yml
├── scripts/
│   ├── start.sh
│   └── stop.sh
├── src/
├── package.json
└── README.md

## 🔄 CI/CD Flow

- Developer pushes code to GitHub

- CodePipeline triggers automatically

- CodeBuild runs build and tests

- Artifacts stored in S3

- CodeDeploy deploys to EC2

- Application goes live

## 🐞 Troubleshooting

- Pipeline fails at Source → Check GitHub webhook and OAuth

- Build fails → Validate buildspec.yml

- Deploy fails → Check CodeDeploy agent status

- Permission errors → Review IAM policies

## 🔐 Security Best Practices

- Use least-privilege IAM roles

- Enable CloudWatch logging

- Store secrets in AWS Secrets Manager

- Restrict EC2 security groups

- Enable S3 encryption and versioning

## 📚 References

- AWS CodePipeline Documentation

- AWS CodeBuild Buildspec Reference

- AWS CodeDeploy EC2 Deployment Guide
