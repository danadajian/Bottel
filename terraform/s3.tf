resource "aws_s3_bucket" "cdn_bucket" {
  bucket = "last-dram-cdn"
  acl    = "private"
}
