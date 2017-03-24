k8s-setup:
	ansible-playbook -i ansible/inventory-k8 ansible/roles/common.yml -e ansible_python_interpreter=/usr/bin/python3 -u INSERT_USER_HERE --ask-pass --ask-become-pass

k8s-common:
	ansible-playbook -i ansible/inventory-k8 ansible/roles/common.yml -e ansible_python_interpreter=/usr/bin/python3 -u INSERT_USER_HERE

k8s-apt:
	ansible-playbook -i ansible/inventory-k8 ansible/roles/apt_upgrade.yml -e ansible_python_interpreter=/usr/bin/python3 -u INSERT_USER_HERE

k8s-turnup:
	ansible-playbook -i ansible/inventory-k8 ansible/roles/k8s-turnup.yml -e ansible_python_interpreter=/usr/bin/python3 -u INSERT_USER_HERE

k8s-teardown:
	ansible-playbook -i ansible/inventory-k8 ansible/roles/k8s-teardown.yml -e ansible_python_interpreter=/usr/bin/python3 -u INSERT_USER_HERE
