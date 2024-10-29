terraform {
  backend "s3" {
    bucket = "kaizen-daler"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}