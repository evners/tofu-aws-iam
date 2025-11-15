# Locals block for defining IAM users.
# This file defines a list of IAM users and groups with various configurations.
locals {
  iam_users = [
    # Define a simple user.
    { name = "jane.smith", groups = ["devs"], console_access = true },
    { name = "john.doe", groups = ["admins", "devs"] },
    # Define a user with console access.
  ]

  # Define IAM groups.
  iam_groups = [
    { name = "devs" },
    { name = "admins" },
  ]
}
