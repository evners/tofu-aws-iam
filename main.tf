# Define your main resources here.
# Example: Placeholder for a simple resource that demonstrates using a variable.

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}