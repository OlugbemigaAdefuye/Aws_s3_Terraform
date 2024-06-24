# main.tf

# Specify the provider
provider "aws" {
  region = "eu-west-2"  # Replace with your desired AWS region
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "cloudboosta-lab5-bucket"  # Replace with your desired unique bucket name
  acl    = "private"

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}
