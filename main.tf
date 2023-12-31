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

module "cloudwatch" {
  source = "./cloudwatch"
}

module "s3" {
  source = "./s3"
}

module "sns" {
  source = "./sns"
}

module "lambda" {
  source = "./lambda"
}