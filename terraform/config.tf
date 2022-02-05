terraform {
  backend "s3" {
    bucket = "terraform"
    key    = "Bottel"
    region = "us-east-1"
  }
}