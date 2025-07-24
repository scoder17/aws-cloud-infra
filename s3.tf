# ------------------------
# S3 Bucket
# ------------------------

resource "aws_s3_bucket" "app_bucket" {
  bucket        = "my-app-bucket-${random_id.bucket_id.hex}"
  force_destroy = true

  tags = {
    Name = "AppBucket"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}