resource "aws_iam_role" "last-dram-dynamodb-role" {
  name = "last-dram-dynamodb-role"

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

resource "aws_iam_role_policy" "last-dram-dynamodb-policy" {
  name = "last-dram-dynamodb-policy"
  role = aws_iam_role.last-dram-dynamodb-role.id

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
        "${aws_dynamodb_table.bottles-table.arn}",
        "${aws_dynamodb_table.user-bottles-table.arn}",
      ]
    }
  ]
}
EOF
}