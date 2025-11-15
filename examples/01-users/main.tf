# Example of how to use the module with the minimum configuration required.
# Note: This example creates IAM users with no additional settings.

module "iam_users" {
  # Source code.
  source = "../.."

  # Settings
  users = local.iam_users
}