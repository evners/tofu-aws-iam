# Example of how to use the module with the minimum configuration required.
# Note: This example creates IAM users, groups, and assigns users to groups.

module "iam" {
  # Source code.
  source = "../.."

  # Settings
  users  = local.iam_users
  groups = local.iam_groups
}