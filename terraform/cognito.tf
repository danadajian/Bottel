resource "aws_cognito_user_pool" "bottel-user-pool" {
  name = "bottel-user-pool"

  auto_verified_attributes = ["phone_number"]

  schema {
    attribute_data_type = "String"
    name                = "phone_number"
    required            = true
    string_attribute_constraints {
      min_length = "0"
      max_length = "256"
    }
  }

  username_configuration {
    case_sensitive = false
  }

  sms_configuration {
    external_id    = var.external_id
    sns_caller_arn = aws_iam_role.bottel-sns-caller-role.arn
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