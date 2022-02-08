provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "last-dram-terraform-us-east-1"
    key    = "LastDram"
    region = "us-east-1"
  }
}