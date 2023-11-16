resource "aws_sns_topic" "main" {
  name = "your-topic-name" 
}

output "topic_arn" {
  value = aws_sns_topic.main.arn
}
