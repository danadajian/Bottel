provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "bottel-terraform-${var.aws_region}"
    key    = "Bottel"
    region = var.aws_region
  }
}