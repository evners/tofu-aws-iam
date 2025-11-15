# Example outputs for IAM users module.
# Note, we can access specific user ARNs using the module output.
# E.g. `module.iam.user_arns["jane.smith"]` will give the ARN of the user "jane.smith".
output "user_arns" {
  description = "Map of IAM user names to their ARNs"
  value       = module.iam.user_arns
}