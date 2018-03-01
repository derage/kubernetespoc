#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/terraform_2 && terraform destroy

helm delete --purge my-release

kubectl delete -f $DIR/nginx-lb-manifest.yaml
