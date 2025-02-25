#!/bin/bash
set -e

echo "Running Ansible Playbooks..."

ansible-playbook -i ansible/inventory.ini ansible/playbooks/web_setup.yml
ansible-playbook -i ansible/inventory.ini ansible/playbooks/db_setup.yml
ansible-playbook -i ansible/inventory.ini ansible/playbooks/lb_setup.yml

echo "Deployment Completed Successfully!"

