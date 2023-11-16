resource "aws_s3_bucket" "main" {
  bucket = "your-s3-bucket-name"
  acl    = "private"

}

output "bucket_name" {
  value = aws_s3_bucket.main.bucket
}
