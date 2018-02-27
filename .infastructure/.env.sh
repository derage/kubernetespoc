export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
export KUBE_BUCKET_NAME=kubepoc-cafarelli-cluster

export NAME=kubepoc.cafarelli.io
export KOPS_STATE_STORE=s3://$KUBE_BUCKET_NAME
