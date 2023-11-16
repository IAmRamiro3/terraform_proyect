resource "aws_sqs_queue" "main" {
  name = "your-queue-name" 
}

output "queue_url" {
  value = aws_sqs_queue.main.id
}
