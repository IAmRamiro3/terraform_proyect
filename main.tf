terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.69.0"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example_server" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["ssh-virginia-sg", "http-virginia-sg"]
  key_name               = "ramiro-virginia"

  tags = {
    Owner = "Ramiro"
    Name  = "ramiro-test-instance"
  }
}

resource "aws_cloudwatch_log_group" "example_log_group" {
  name              = "/example/log/group"
  retention_in_days = 7
}

resource "aws_s3_bucket" "example" {
  bucket = "ramiro-test-bucket"

  tags = {
    Name  = "Ramiro Bucket"
    Owner = "Ramiro"
  }
}