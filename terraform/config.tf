provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform"
    key    = "Bottel/terraform.tfstate"
    region = "us-east-1"
  }
}