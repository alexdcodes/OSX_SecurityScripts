#!/bin/bash

# System Information Script

# Get system hostname
hostname=$(hostname)

# Get operating system information
opsys=$(cat /etc/os-release | grep "PRETTY_NAME" | awk -F '=' '{print $2}' | sed 's/"//g')
kernel=$(uname -r)

# Get CPU information
CPUmodel=$(lscpu | grep "Model name:" | awk -F ':' '{print $2}' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
CPUcores=$(lscpu | grep "CPU(s):" | awk -F ':' '{print $2}' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

# Get memory information
RAMtotal=$(free -m | awk '/Mem:/ {print $2}')

# Get disk space information
Disktotal=$(df -h / | awk 'NR==2 {print $2}')
Diskused=$(df -h / | awk 'NR==2 {print $3}')
Diskavail=$(df -h / | awk 'NR==2 {print $4}')

# Get uptime information
uptime=$(uptime | awk '{print $3,$4,$5}')

# Display the information
echo "----------------------------------------"
echo "System Information"
echo "----------------------------------------"
echo "Hostname: $hostname"
echo "Operating System: $opsys"
echo "Kernel Version: $kernel"
echo "CPU Model: $CPUmodel"
echo "CPU Cores: $CPUcores"
echo "Total RAM: $RAMtotal MB"
echo "Total Disk Space: $Disktotal"
echo "Disk Used: $Diskused"
echo "Disk Available: $Diskavail"
echo "Uptime: $uptime"
echo "----------------------------------------"

