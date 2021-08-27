#!/usr/env bash

kmargs="-n kube-master -d 8GB -c 2 -m 3072M --cloud-init $HOME/cloud.icraft.ltd/multipass-edge-T40/cloud-init/k8s/default.yaml 20.04"
echo "[master] Create kube-master node with args: multipass launch $kmargs";

# read -p "Type kube node instance total: " n
n=3
for ((i=1;i<=$n;i++)); do
	nargs="-n kube-node-$i -d 8GB -c 2 -m 3072M --cloud-init $HOME/cloud.icraft.ltd/multipass-edge-T40/cloud-init/k8s/default.yaml 20.04";
	end=""
	if [[ $i == $n ]]; then
		end="\n"
	fi

	printf "[node] Create kube-node with args: multipass launch $nargs \r$end";
	sleep 0.5
done

multipass list | grep kube