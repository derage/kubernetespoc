source .env.sh

cd terraform_1 && terraform apply \
  -var "kube_s3_bucket=$KUBE_BUCKET_NAME" \

kops create cluster \
    --node-count 1 \
    --zones us-east-1a \
    --master-zones us-east-1a \
    --node-size t2.medium \
    --master-size t2.medium \
    ${NAME}
