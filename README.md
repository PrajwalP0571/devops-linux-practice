# 🐧 DevOps Linux Practice Scripts

> A collection of Linux shell scripts for DevOps automation tasks.  
> Built as part of my **DevOps/MLOps Learning Journey**.

---

## 👤 Author

| Field | Details |
|-------|---------|
| **Name** | Prajwal Pawar |
| **Role** | DevOps/MLOps Engineer (Learning Journey) |
| **GitHub** | [@PrajwalP0571](https://github.com/PrajwalP0571) |

---

## 📂 Scripts Overview

| # | Script Name | Purpose | Status |
|---|-------------|---------|--------|
| 1 | [`server-setup.sh`](#1-server-setupsh) | Automates initial Ubuntu server setup | ✅ Complete |
| 2 | [`monitor.sh`](#2-monitorsh) | Automates initial Ubuntu server setup | ✅ Complete |

---

## 📄 Script Details

---

### 1. `server-setup.sh`

#### 📌 Purpose
Automates the **initial setup of a fresh Ubuntu server** — a task DevOps engineers perform repeatedly when provisioning new cloud instances on AWS EC2 or Azure VM.

Instead of manually running commands one by one, this script executes all setup steps in a single run, reducing human error and saving time.

---

#### ⚙️ What It Does

The script runs **5 automated steps:**

| Step | Action | Tools Used |
|------|--------|-----------|
| **1/5** | Updates the system package list | `apt update` |
| **2/5** | Installs essential tools | `curl`, `wget`, `git`, `zip`, `unzip`, `tree`, `net-tools` |
| **3/5** | Installs & starts Nginx web server | `apt install nginx`, `systemctl` |
| **4/5** | Verifies all installations | `git --version`, `curl --version`, `systemctl is-active` |
| **5/5** | Displays system information | `hostname`, `os-release`, `free`, `df` |

---

#### 🖥️ System Info Captured

After setup, the script automatically prints:

- ✅ Hostname
- ✅ Operating System name
- ✅ Available RAM (in MB)
- ✅ Free Disk Space

---

#### 📋 Prerequisites

| Requirement | Details |
|-------------|---------|
| **OS** | Ubuntu 22.04 LTS |
| **Privileges** | `sudo` access required |
| **Cloud** | AWS EC2 / Azure VM / Any Ubuntu Server |

---

#### 🚀 Usage

**Step 1 — Clone the repository**
```bash
git clone https://github.com/PrajwalP0571/devops-linux-practice.git
cd devops-linux-practice
```

**Step 2 — Give execute permission**
```bash
chmod +x server-setup.sh
```

**Step 3 — Run the script**
```bash
bash server-setup.sh
```

---

#### 📤 Expected Output

```
===========================================
   Server Setup Script - DevOps Practice
===========================================

[1/5] Updating package list...
[2/5] Installing essential tools...
[3/5] Installing Nginx web server...
[4/5] Verifying installations...

Git version: git version 2.34.1
Curl version: curl 7.81.0
Nginx status: active

[5/5] System Information:
Hostname: ip-172-31-xx-xx
OS: "Ubuntu 22.04.3 LTS"
RAM Available: 842 MB
Disk Free: 7.2G

===========================================
              Setup Complete
===========================================
```

---

#### 🛠️ Tech Stack

![Bash](https://img.shields.io/badge/Bash-Shell_Scripting-4EAA25?style=flat&logo=gnu-bash&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04_LTS-E95420?style=flat&logo=ubuntu&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-Web_Server-009639?style=flat&logo=nginx&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-EC2-FF9900?style=flat&logo=amazonaws&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-VM-0078D4?style=flat&logo=microsoftazure&logoColor=white)

---

#### 💡 Real-World DevOps Context

> In real companies, this kind of script is the **first thing that runs** when a new server is provisioned.  
> Tools like **Ansible** and **Terraform** later replace manual scripts like this —  
> but understanding the underlying shell commands is essential for every DevOps engineer.

---

---

## 2. Server Monitor Script (`monitor.sh`)

### What this script does
Monitors key server health metrics and logs them to a file.
Tracks RAM availability, disk space, Nginx status, and active users.
Designed to run automatically via cron job for continuous monitoring.

### Prerequisites
- Ubuntu 20.04 / 22.04 / 24.04
- Nginx installed
- sudo privileges

### How to run manually
```bash
chmod +x monitor.sh
./monitor.sh
```

### How to schedule with cron (every minute)
```bash
crontab -e
# Add this line:
* * * * * /home/ubuntu/devops-practice/linux/monitor.sh
```

### What gets monitored
| Metric | Source Command |
|---|---|
| Available RAM | `free -m` |
| Free Disk Space | `df -h` |
| Nginx Service Status | `systemctl is-active nginx` |
| Active Users | `who` |

### Sample output (`server-monitor.log`)

---

---

## 📈 Repository Progress

This repository grows as I complete each topic in my DevOps/MLOps learning journey.

| Topic | Scripts Added | Status |
|-------|--------------|--------|
| Linux | `server-setup.sh` | ✅ Complete |
| Git & GitHub | — | 🔄 In Progress |
| Docker | — | ⏳ Pending |
| Kubernetes | — | ⏳ Pending |
| Jenkins | — | ⏳ Pending |
| Terraform | — | ⏳ Pending |
| Ansible | — | ⏳ Pending |

---

## 🔗 Connect

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/prajwal-pawar0571/)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=flat&logo=github&logoColor=white)](https://github.com/PrajwalP0571)

---

> ⭐ *If this helped you, consider starring the repository!*
