# Example outputs for IAM module.
# Note, we can access specific group ARN using the module output.
# E.g. `module.iam.group_arns["devs"]` will give the ARN of the group "devs".
output "group_arns" {
  description = "Map of IAM user names to their ARNs"
  value       = module.iam.group_arns
}