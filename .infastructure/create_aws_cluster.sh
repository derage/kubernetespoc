DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/.env.sh

cd $DIR/terraform_1 && terraform apply \
  -var "kube_s3_bucket=$KUBE_BUCKET_NAME" \

kops create cluster \
    --node-count 1 \
    --zones us-east-1a \
    --master-zones us-east-1a \
    --node-size m3.large \
    --master-size m3.large \
    ${NAME}

# Kops does this automagically
#kops export kubecfg
