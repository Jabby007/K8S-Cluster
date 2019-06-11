Use this Repo to install kubernetes cluster.

Pre-requisites To Install Kubernetes 
Since we are dealing with VMs, we recommend the following settings for the VMs:-

Master:

2 GB RAM
2 Cores of CPU


Slave/ Node:

1 GB RAM
1 Core of CPU


By this point of time, I have assumed you have 2 plain Ubuntu VMs imported onto your Oracle Virtual Box. So, I’l just get along with the installation process.

STEPS:

1. Run k8s_master.sh script on your master node.
2. Run apply_CNI.sh on master node to run a CNI to provide networking to your cluster, in this case weavenet is used.
3. Run k8s_worker.sh script on your worker node.
4. Run kubeadm join with token genrated from output of master installation to join your worker node to master.
5. check kubectl get nodes from master nodes to check the nodes are available as worker node.
6. Deploy some application and check if it is running properly.


