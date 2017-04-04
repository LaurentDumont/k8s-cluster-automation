This series of Ansible playbooks allow the creation of a Kubernetes cluster using the "kubeadm" boostrap method.

You can use the Makefile to easily use the "ansible-playbook" commands.

* Requirements :
   * Edit the inventory file to add the required nodes and master hosts. For now, a single master is supported. Multiple nodes are supported.
   * Edit the k8-vars file in the root vars folder in order to add your own token for your cluster. Keep this token secure and do not commit it to any exterior SVC systems.

| Command | What does it do? |
| --- | --- |
|k8s-setup| Setup a system with basic packages but asking for password/ sudo password. |
|k8s-common| Setup a system with basic packages but with a ssh-key for login. |
| make k8s-apt | Runs "apt-get update && apt-get upgrade -y -qq" |
| make k8s-turnup | Bootstrap the cluster using kubeadm. |
|make k8s-teardown| Teardown the cluster and removes all Docker containers. |
