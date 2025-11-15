output "user_arns" {
  description = "Map of IAM user names to their corresponding ARNs."
  value       = { for name, user in aws_iam_user.this : name => user.arn }
}

output "group_arns" {
  description = "Map of IAM group names to their corresponding ARNs."
  value       = { for name, group in aws_iam_group.this : name => group.arn }
}