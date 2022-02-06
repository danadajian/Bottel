resource "aws_cognito_user_pool" "bottel-user-pool" {
  name = "bottel-user-pool"
  username_configuration {
    case_sensitive = false
  }
  auto_verified_attributes = ["phone_number"]
  schema {
    attribute_data_type = String
    name                = "phone_number"
    required            = true
    string_attribute_constraints {
      min_length = 10
      max_length = 11
    }
  }
  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_phone_number"
      priority = 1
    }
  }
}

resource "aws_cognito_user_pool_client" "client" {
  name = "bottel-client"

  user_pool_id = aws_cognito_user_pool.bottel-user-pool.id
}