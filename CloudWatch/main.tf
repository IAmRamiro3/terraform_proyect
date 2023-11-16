resource "aws_cloudwatch_log_group" "main" {
  name = "/your/log/group/name"
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.main.name
}
