# Define the output values for the module.
# Example: Placeholder for a simple output that exposes an attribute of the main resource.

output "resource_id" {
  description = "The ID of the main resource created by this module."
  value       = aws_s3_bucket.example.id
}

output "resource_arn" {
  description = "The ARN of the main resource."
  value       = aws_s3_bucket.example.arn
}