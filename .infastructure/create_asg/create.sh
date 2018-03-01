#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
helm init

helm install --name my-release -f $DIR/asg_values.yaml stable/cluster-autoscaler

helm install stable/kubernetes-dashboard

helm install stable/heapster --namespace kube-system

cd $DIR/terraform_2 && terraform apply

kubectl apply -f $DIR/nginx-lb-manifest.yaml


#kubectl autoscale deployment kubernetespoc --cpu-percent=1 --min=1 --max=10
