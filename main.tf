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
    Name = "example_instance_terraform"
  }
}

resource "aws_cloudwatch_log_group" "example_log_group" {
  name = "/example/log/group/terraform"
  retention_in_days = 7  
}