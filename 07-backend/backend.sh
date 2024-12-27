#!/bin/bash
compoent=$1
environment=$2
dnf install ansible -y
pip3.9 install botocore boto3
ansible-pull -i localhost, -U https://github.com/Lingaiahthammisetti/4.10.expense-ansible-roles-tf.git main-tf.yaml -e component=$component -e env=$environment
