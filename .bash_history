sudo apt-get update -y  && sudo apt-get install apt-transport-https -y
sudo su -
sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni
sudo systemctl daemon-reload
sudo systemctl start kubelet
sudo systemctl enable kubelet.service
sudo systemctl status docker
sudo su -
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
kubectl get nodes
kubectl get pods  --all-namespaces
