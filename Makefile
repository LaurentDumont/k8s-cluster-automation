k8s-setup:
	ansible-playbook -i ansible/inventory-k8 ansible/common.yml -e ansible_python_interpreter=/usr/bin/python3 -u lanets --ask-pass --ask-become-pass

k8s-common:
	ansible-playbook -i ansible/inventory-k8 ansible/common.yml -e ansible_python_interpreter=/usr/bin/python3 -u lanets --ask-pass --ask-become-pass

k8s-apt:
	ansible-playbook -i ansible/inventory-k8 ansible/apt_upgrade.yml -e ansible_python_interpreter=/usr/bin/python3 -u lanets --ask-pass --ask-become-pass

k8s-turnup:
	ansible-playbook -i ansible/inventory-k8 ansible/k8s-turnup.yml -e ansible_python_interpreter=/usr/bin/python3 -u lanets --ask-pass --ask-become-pass -v

k8s-teardown:
	ansible-playbook -i ansible/inventory-k8 ansible/k8s-teardown.yml -e ansible_python_interpreter=/usr/bin/python3 -u lanets --ask-pass --ask-become-pass
