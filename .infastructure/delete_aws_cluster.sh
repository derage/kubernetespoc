DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/.env.sh

kops delete cluster --name $NAME --yes

cd $DIR/terraform_1 && terraform destroy   -var "kube_s3_bucket=$KUBE_BUCKET_NAME"
