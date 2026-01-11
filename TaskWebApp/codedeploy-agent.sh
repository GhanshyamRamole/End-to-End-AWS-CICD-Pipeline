#!/bin/bash

# 1. Update and install dependencies
sudo yum update -y
sudo yum install ruby wget -y

# 2. Cleanup any previous broken installs
sudo systemctl stop codedeploy-agent
sudo yum erase codedeploy-agent -y
cd /home/ec2-user
rm -rf install

# 3. Download the official installer for us-west-1
# (Do not use taskapp-bucket unless you are sure it is valid)
wget https://aws-codedeploy-us-west-1.s3.us-west-1.amazonaws.com/latest/install

# 4. Make executable
chmod +x ./install

# 5. Install the agent (This handles the service file creation)
sudo ./install auto

# 6. Check status
sudo systemctl status codedeploy-agent
