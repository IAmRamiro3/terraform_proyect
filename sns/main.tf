resource "aws_sns_topic" "example_sns" {
  name = "test-ramiro"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.example_sns.arn
  protocol  = "email"
  endpoint  = "ramironunezsanchez3@gmail.com"
}
