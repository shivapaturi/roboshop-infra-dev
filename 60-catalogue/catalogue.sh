#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/shivapaturi/ansible-roboshop-role-tf.git -e component=$1 -e env=$2 main.yaml