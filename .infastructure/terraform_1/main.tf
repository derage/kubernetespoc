variable "kube_s3_bucket" {}

resource "aws_s3_bucket" "b" {
  bucket = "${var.kube_s3_bucket}"
  acl    = "private"

  tags {
    Name        = "kubepoc"
  }
}
