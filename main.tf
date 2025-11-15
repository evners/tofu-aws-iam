################################################################################################################
###############################                 USERS                  #########################################
################################################################################################################

# Creates IAM users based on the list provided in `var.users`.
resource "aws_iam_user" "this" {

  # Iterates over each user in `var.users`.
  for_each = { for user in var.users : user.name => user }

  name          = each.value.name          # Sets the IAM username.
  path          = each.value.path          # Defines the IAM user path.
  force_destroy = each.value.force_destroy # Allows force deletion of the user if set to true.

  # Add extra tags.
  tags = var.extra_tags

}