#!/bin/bash
#Install Code Deploy Agent
code_deploy_agent=`rpm -qa | grep codedeploy | wc -l`
sudo yum update
sudo yum install ruby wget
if [[ $code_deploy_agent == 0 ]]; then
    CODEDEPLOY_BIN="/opt/codedeploy-agent/bin/codedeploy-agent"
    $CODEDEPLOY_BIN stop
    yum erase codedeploy-agent -y
    cd /home/ec2-user
    wget https://aws-codedeploy-us-east-2.s3.us-east-2.amazonaws.com/latest/install
    chmod +x ./install
    sudo ./install auto
    systemctl status codedeploy-agent
    systemctl start codedeploy-agent
    systemctl enable codedeploy-agent

else echo "CodeDeploy agent is installed"

fi
#Install Docker
docker_installed=`rpm -qa | grep docker | wc -l`
if [[ $docker_installed == 0 ]]; then
    sudo yum install -y docker
    sudo service docker start
    sudo usermod -a -G docker ec2-user
    sudo systemctl enable docker
else echo "Docker agent is installed"
fi
