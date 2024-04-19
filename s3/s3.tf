resource "aws_s3_bucket" "state" {
  bucket_prefix = "terraform-state"

  tags = {
    Terraform = true
  }
}


resource "aws_dynamodb_table" "state_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Terraform = true
  }
}