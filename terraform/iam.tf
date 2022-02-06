resource "aws_iam_role" "bottel-dynamodb-role" {
  name = "bottel-dynamodb-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "appsync.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "bottel-dynamodb-policy" {
  name = "bottel-dynamodb-policy"
  role = aws_iam_role.bottel-dynamodb-role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "${aws_dynamodb_table.bottles-table.arn}"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_role" "bottel-sns-caller-role" {
  name = "bottel-sns-caller-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "stsAssumeRole",
      "Principal": {
        "Service": "cognito-idp.amazonaws.com"
      },
      "Effect": "Allow",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "${var.external_id}"
        }
      }
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "bottel-sns-caller-policy" {
  name = "bottel-sns-caller-policy"
  role = aws_iam_role.bottel-sns-caller-role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "sns:publish"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ]
}
EOF
}