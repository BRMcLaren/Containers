git clone --recursive https://github.com/openenclave/openenclave.git --branch v0.9.x
bash openenclave/scripts/ansible/install-ansible.sh
ansible-playbook openenclave/scripts/ansible/oe-contributors-acc-setup-no-driver.yml 
bash openenclave/scripts/ansible/remove-ansible.sh
rm -rf openenclave
