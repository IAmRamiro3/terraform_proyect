provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source = "./S3"
}

module "cloudwatch" {
  source = "./CloudWatch"
}

module "sqs" {
  source = "./SQS"
}

module "sns" {
  source = "./SNS"
}
