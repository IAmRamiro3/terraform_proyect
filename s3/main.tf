resource "aws_s3_bucket" "example_bucket" {
  bucket = "proyecto-carlos"

  tags = {
    Name  = "proyecto-carlos"
    Owner = "ramiro"
  }
}
