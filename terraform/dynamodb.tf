resource "aws_dynamodb_table" "bottles-table" {
  name         = "Bottles"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "category"
    type = "S"
  }

  global_secondary_index {
    hash_key        = "category"
    name            = "CategoryIndex"
    projection_type = "ALL"
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
