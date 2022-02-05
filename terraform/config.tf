provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "bottel-terraform-us-east-1"
    key    = "Bottel"
    region = "us-east-1"
  }
}