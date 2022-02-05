resource "aws_cognito_user_pool" "bottel-user-pool" {
  name = "bottel-user-pool"
}

resource "aws_cognito_user_pool_client" "client" {
  name = "bottel-client"

  user_pool_id = aws_cognito_user_pool.bottel-user-pool.id
}