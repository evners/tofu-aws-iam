# Locals block for defining IAM users.
# This file defines a list of IAM users and groups with various configurations.
locals {
  iam_users = [
    # Define a simple user.
    { name = "john.doe", groups = ["admins", "devs"] },
    # Define a user with console access.
    { name = "jane.smith", groups = ["devs"], console_access = true },
  ]

  # Define IAM groups.
  iam_groups = [
    { name = "devs" },
    # Define a group with a managed policy.
    { name = "admins", managed_policies = ["arn:aws:iam::aws:policy/AdministratorAccess"] },
  ]
}
