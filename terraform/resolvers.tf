locals {
  default_response_template = "$util.toJson($context.result)"
}

resource "aws_appsync_resolver" "listBottles-resolver" {
  api_id      = aws_appsync_graphql_api.last-dram-api.id
  field       = "listBottles"
  type        = "Query"
  data_source = aws_appsync_datasource.bottles-datasource.name

  request_template  = file("resolver-templates/Scan.vtl")
  response_template = local.default_response_template
}

resource "aws_appsync_resolver" "listUserBottles-resolver" {
  api_id      = aws_appsync_graphql_api.last-dram-api.id
  field       = "listUserBottles"
  type        = "Query"
  data_source = aws_appsync_datasource.user-bottles-datasource.name

  request_template  = file("resolver-templates/Scan.vtl")
  response_template = local.default_response_template
}

resource "aws_appsync_resolver" "createUserBottle-resolver" {
  api_id      = aws_appsync_graphql_api.last-dram-api.id
  field       = "createUserBottle"
  type        = "Mutation"
  data_source = aws_appsync_datasource.user-bottles-datasource.name

  request_template  = file("resolver-templates/PutItem.vtl")
  response_template = local.default_response_template
}

resource "aws_appsync_resolver" "updateUserBottle-resolver" {
  api_id      = aws_appsync_graphql_api.last-dram-api.id
  field       = "updateUserBottle"
  type        = "Mutation"
  data_source = aws_appsync_datasource.user-bottles-datasource.name

  request_template  = file("resolver-templates/UpdateItem.vtl")
  response_template = local.default_response_template
}

resource "aws_appsync_resolver" "deleteUserBottle-resolver" {
  api_id      = aws_appsync_graphql_api.last-dram-api.id
  field       = "deleteUserBottle"
  type        = "Mutation"
  data_source = aws_appsync_datasource.user-bottles-datasource.name

  request_template  = file("resolver-templates/DeleteItem.vtl")
  response_template = local.default_response_template
}
