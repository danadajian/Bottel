resource "aws_s3_bucket" "cdn_bucket" {
  bucket = "bottel-cdn"
  acl    = "private"
}

resource "aws_cognito_user_pool" "bottel-user-pool" {
  name = "bottel-user-pool"
}

resource "aws_appsync_graphql_api" "example" {
  authentication_type = "AMAZON_COGNITO_USER_POOLS"
  name                = "bottel-api"

  user_pool_config {
    aws_region     = var.aws_region
    default_action = "DENY"
    user_pool_id   = aws_cognito_user_pool.bottel-user-pool.id
  }
}
