variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "aws region"
}

variable "external_id" {
  type        = string
  description = "for SNS IAM role"
}
