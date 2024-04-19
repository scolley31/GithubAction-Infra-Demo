terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-state20240419174234197000000001"
    key            = "build-instance/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terraform-locks"
  }
}