# Locals block for defining IAM users.
# This file defines a list of IAM users with various configurations.
locals {
  iam_users = [
    # Define a simple user.
    { name = "john.doe" },
  ]
}
