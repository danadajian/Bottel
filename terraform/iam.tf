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