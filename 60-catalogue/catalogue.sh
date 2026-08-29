#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/shivapaturi/ansible-roboshop-roles-tf -e component=$1 -e env=$2 main.yaml