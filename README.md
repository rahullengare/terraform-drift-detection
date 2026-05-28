# 🚀 Terraform Drift Detection Project

## 📌 Overview

This project demonstrates **infrastructure drift detection** using Terraform on AWS.

It provisions:

* EC2 Instance
* Security Group (SSH access)
* S3 Bucket

---

## 🛠️ Tech Stack

* Terraform
* AWS (EC2, S3, VPC)
* Bash

---

## ⚙️ Resources Created

* EC2 (t2.micro)
* Security Group (Port 22 open)
* S3 Bucket

---

## 📂 Project Structure

```
.
├── main.tf
├── provider.tf
├── deploy.sh
```

---

## ▶️ Setup & Run

```bash
# Clone repo
git clone <your-repo-url>
cd terraform-drift-detection-main

# Initialize Terraform
terraform init

# Apply infrastructure
terraform apply -auto-approve
```

---

## 🤖 Automation Script

```bash
#!/bin/bash
cd /home/ubuntu/drift-project
terraform apply -auto-approve
```

Run:

```bash
bash deploy.sh
```

---

## 🔍 Drift Detection

Make manual changes in AWS (e.g., delete SG rule), then run:

```bash
terraform plan
```

👉 Terraform will show **drift (difference)** between actual and expected state.

---

## 🎯 Objective

* Understand Terraform state management
* Detect infrastructure drift
* Maintain consistent cloud resources

---

## 💡 Outcome

Ensures infrastructure remains **consistent, predictable, and version-controlled**.

---
