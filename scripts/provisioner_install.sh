#!/bin/bash -e

sudo apt update
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs
sudo apt install unzip
sudo npm install pm2@latest -g
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install -i /usr/local/aws-cli -b /usr/local/bin
mkdir -p ~/.aws
echo "[profile prod]" > ~/.aws/config
echo "output = json" >> ~/.aws/config
echo "region = us-east-1" >> ~/.aws/config
sudo npm install pm2 -g
sudo apt install ruby wget -y
cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
# Cloud Agent
cd /home/ubuntu
wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb
sudo systemctl enable amazon-cloudwatch-agent.service
sudo rm -rf awscliv2.zip
sudo rm -rf install
sudo rm -rf amazon-cloudwatch-agent.deb