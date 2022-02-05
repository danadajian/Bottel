resource "aws_appsync_graphql_api" "bottel-api" {
  authentication_type = "AMAZON_COGNITO_USER_POOLS"
  name                = "bottel-api"
  schema              = file("../schema.graphql")

  user_pool_config {
    aws_region     = var.aws_region
    default_action = "ALLOW"
    user_pool_id   = aws_cognito_user_pool.bottel-user-pool.id
  }
}

resource "aws_appsync_resolver" "getBottle-resolver" {
  api_id      = aws_appsync_graphql_api.bottel-api.id
  field       = "getBottle"
  type        = "Query"
  data_source = aws_appsync_datasource.bottles-datasource.name

  request_template  = file("resolver-templates/GetItem.vtl")
  response_template = "$util.toJson($context.result)"
}

resource "aws_appsync_resolver" "listBottles-resolver" {
  api_id      = aws_appsync_graphql_api.bottel-api.id
  field       = "listBottles"
  type        = "Query"
  data_source = aws_appsync_datasource.bottles-datasource.name

  request_template  = file("resolver-templates/Scan.vtl")
  response_template = "$util.toJson($context.result)"
}

resource "aws_appsync_resolver" "createBottle-resolver" {
  api_id      = aws_appsync_graphql_api.bottel-api.id
  field       = "createBottle"
  type        = "Mutation"
  data_source = aws_appsync_datasource.bottles-datasource.name

  request_template  = file("resolver-templates/PutItem.vtl")
  response_template = "$util.toJson($context.result)"
}

resource "aws_appsync_resolver" "updateBottle-resolver" {
  api_id      = aws_appsync_graphql_api.bottel-api.id
  field       = "updateBottle"
  type        = "Mutation"
  data_source = aws_appsync_datasource.bottles-datasource.name

  request_template  = file("resolver-templates/UpdateItem.vtl")
  response_template = "$util.toJson($context.result)"
}

resource "aws_appsync_resolver" "deleteBottle-resolver" {
  api_id      = aws_appsync_graphql_api.bottel-api.id
  field       = "deleteBottle"
  type        = "Mutation"
  data_source = aws_appsync_datasource.bottles-datasource.name

  request_template  = file("resolver-templates/DeleteItem.vtl")
  response_template = "$util.toJson($context.result)"
}

resource "aws_appsync_datasource" "bottles-datasource" {
  api_id           = aws_appsync_graphql_api.bottel-api.id
  name             = "bottles_datasource"
  service_role_arn = aws_iam_role.bottel-dynamodb-role.arn
  type             = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = aws_dynamodb_table.bottles-table.name
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
}