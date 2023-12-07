resource "aws_s3_bucket" "example_bucket" {
  bucket = "proyecto-carlos-ramiro"

  tags = {
    Name  = "proyecto-carlos-ramiro"
    Owner = "ramiro"
  }
}
