resource "aws_cloudwatch_log_group" "example_log_group" {
  name              = "/aws/lambda/actualizarS3_Ramiro"
  retention_in_days = 7
}
