provider "aws" {
  region = var.aws_region
}

module "s3" {
  source     = "./S3"
  bucket_name = var.s3_bucket_name
}

module "cloudwatch" {
  source           = "./CloudWatch"
  log_group_name   = var.cloudwatch_log_group_name
}

module "sqs" {
  source     = "./SQS"
  queue_name = var.sqs_queue_name
}

module "sns" {
  source      = "./SNS"
  topic_name  = var.sns_topic_name
}
