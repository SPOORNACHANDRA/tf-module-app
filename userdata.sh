#!/bin/bash

yum install ansible -y &>>/opt/userdata.log
yum install python3.11.-pip.norch-y &>>/opt/userdata.log
pip3.11 install botocore boto3 &>>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/SPOORNACHANDRA/ansible-roboshop-v1.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log
