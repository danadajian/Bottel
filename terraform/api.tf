resource "aws_appsync_graphql_api" "last-dram-api" {
  authentication_type = "API_KEY"
  name                = "last-dram-api"
  schema              = file("../schema.graphql")
}

resource "aws_appsync_api_key" "api-key" {
  api_id  = aws_appsync_graphql_api.last-dram-api.id
  expires = "2023-02-05T00:00:00Z"
}

resource "aws_appsync_datasource" "bottles-datasource" {
  api_id           = aws_appsync_graphql_api.last-dram-api.id
  name             = "bottles_datasource"
  service_role_arn = aws_iam_role.last-dram-dynamodb-role.arn
  type             = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = aws_dynamodb_table.bottles-table.name
  }
}

resource "aws_appsync_datasource" "user-bottles-datasource" {
  api_id           = aws_appsync_graphql_api.last-dram-api.id
  name             = "user_bottles_datasource"
  service_role_arn = aws_iam_role.last-dram-dynamodb-role.arn
  type             = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = aws_dynamodb_table.user-bottles-table.name
  }
}

resource "aws_dynamodb_table" "bottles-table" {
  name           = "Bottles"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_dynamodb_table" "user-bottles-table" {
  name           = "UserBottles"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}