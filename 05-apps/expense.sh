#!/bin/bash
# user data will get sudo access
dnf install ansible -y
cd /tmp
git clone https://github.com/Prasad8919/expense-ansible-roles-dev.git
cd expense-ansible-roles
ansible-playbook main.yaml -e component=backend -e login_password=prasad123
ansible-playbook main.yaml -e component=frontend