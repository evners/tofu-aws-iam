# Locals block for defining IAM users.
# This file defines a list of IAM users with various configurations.
locals {
  iam_users = [
    # Define a simple user.
    { name = "john.doe" },
    # Define a user with console access.
    { name = "jane.smith", console_access = true },
    # Define a user with access key.
    { name = "org.github", access_key = true }
  ]
}
