output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "cloudwatch_log_group_name" {
  value = module.cloudwatch.log_group_name
}

output "sqs_queue_url" {
  value = module.sqs.queue_url
}

output "sns_topic_arn" {
  value = module.sns.topic_arn
}
