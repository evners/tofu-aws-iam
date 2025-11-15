# This IAM policy document defines permissions for accessing objects in the example S3 bucket.
data "aws_iam_policy_document" "example_inline_policy" {
  statement {
    actions   = ["s3:GetObject", "s3:PutObject"]
    resources = ["arn:aws:s3:::example-bucket/*"]
    effect    = "Allow"
  }
}