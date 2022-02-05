resource "aws_s3_bucket" "cdn_bucket" {
  bucket = "bottel-cdn"
  acl    = "private"
}

resource "aws_cognito_user_pool" "bottel-user-pool" {
  name = "bottel-user-pool"
}

resource "aws_appsync_graphql_api" "bottel-api" {
  authentication_type = "AMAZON_COGNITO_USER_POOLS"
  name                = "bottel-api"
  #  schema              = file("schema.graphql")

  user_pool_config {
    aws_region     = var.aws_region
    default_action = "DENY"
    user_pool_id   = aws_cognito_user_pool.bottel-user-pool.id
  }
}

resource "aws_appsync_datasource" "example" {
  api_id = aws_appsync_graphql_api.bottel-api.id
  name   = "bottles-datasource"
  type   = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = aws_dynamodb_table.bottles-table.name
    #    use_caller_credentials = true
  }
}

resource "aws_dynamodb_table" "bottles-table" {
  name           = "Bottles"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"
  range_key      = "name"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "name"
    type = "S"
  }

  attribute {
    name = "imageUrl"
    type = "S"
  }

  attribute {
    name = "dateOpened"
    type = "Date"
  }

  attribute {
    name = "dateAcquired"
    type = "Date"
  }
}
