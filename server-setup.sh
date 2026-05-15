#!/bin/bash
# ============================================
# Script Name: server-setup.sh
# Purpose: Automates initial Ubuntu server setup
# Author: Prajwal Pawar
# Date: May 2026
# Usage: bash server-setup.sh
# ============================================

echo "==========================================="
echo "   Server Setup Script - DevOps Practice   "
echo "==========================================="

echo ""
echo "[1/5] Updating package list..."
sudo apt update -y

echo ""
echo "[2/5] Installing essential tools..."
sudo apt install -y curl wget git zip unzip tree net-tools

echo ""
echo "[3/5] Installing Nginx web server..."
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

echo ""
echo "[4/5] Verifying installations..."
echo "Git version: $(git --version)"
echo "Curl version: $(curl --version | head -1)"
echo "Nginx status: $(sudo systemctl is-active nginx)"

echo ""
echo "[5/5] System Information:"
echo "Hostname: $(hostname)"
echo "OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)"
echo "RAM Available: $(free -m | grep Mem | awk '{print $7}') MB"
echo "Disk Free: $(df -h / | tail -1 | awk '{print $4}')"

echo "==========================================="
echo "              Setup Complete               "
echo "===========================================" 
