resource "aws_s3_bucket" "example_bucket" {
  bucket = "ramiro-test-bucket"

  tags = {
    Name  = "Ramiro Bucket"
    Owner = "Ramiro"
  }
}
