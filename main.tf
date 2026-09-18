
terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
      }
    }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "challenge-bucket-00" {
  bucket = "challenge-00-bucket"

  tags = {
    Name = "terraform-s3-aula"
  }
}