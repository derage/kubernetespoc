source .env.sh

kops delete cluster --name $NAME --yes

cd terraform_1 && terraform destroy   -var "kube_s3_bucket=$KUBE_BUCKET_NAME"
