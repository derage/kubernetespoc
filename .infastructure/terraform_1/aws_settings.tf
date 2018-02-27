provider aws {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-states-kubepoc"
    key    = "kubepoc-states"
    region = "us-east-1"
  }
}
