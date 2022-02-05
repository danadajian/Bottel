resource "aws_s3_bucket" "cdn_bucket" {
  bucket = "bottel-cdn"
  acl    = "private"
}
