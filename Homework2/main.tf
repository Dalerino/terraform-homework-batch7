provider aws {
    region = "us-east-2"
}

#Create a key in AWS
resource "aws_key_pair" "deployer" {
  key_name   = "Bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

#Create two buckets
resource "aws_s3_bucket" "example1" {
  bucket = "kaizen-dalerino1234"
}

resource "aws_s3_bucket" "example2" {
  bucket_prefix = "kaizen-"
}

#Create two additional buckets manually
resource "aws_s3_bucket" "example3" {
  bucket = "kaizen-db"
}

resource "aws_s3_bucket" "example4" {
  bucket = "kaizen-db1234"
}

#Import commands
#terraform import aws_s3_bucket.example3 kaizen-db
#terraform import aws_s3_bucket.example4 kaizen-db1234