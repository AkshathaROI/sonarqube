resource "aws_iam_policy" "noncompliantpolicy" {
  name        = "noncompliantpolicy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:CreatePolicyVersion"
        ]
        Effect   = "Allow"
        Resource = [
          "*" # Sensitive
        ]
      }
    ]
  })
}
