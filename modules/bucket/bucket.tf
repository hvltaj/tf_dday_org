resource "aws_s3_bucket" "b" {
  bucket = "pz-dday-${var.bucket_name}"
  acl    = "private"

  tags = {
    Environment = var.bucket_name
  }
}