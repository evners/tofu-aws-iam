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

# Creates an IAM user login profile for users who have console access.
# This generates a password and enforces a password reset on first login.
resource "aws_iam_user_login_profile" "this" {

  # For each user in `var.users`, creates a login profile if `console_access` is set to true.
  for_each = { for user in var.users : user.name => user if lookup(user, "console_access", false) }

  user                    = aws_iam_user.this[each.key].name
  password_length         = each.value.password_length         # Generates a random password of 16 characters.
  password_reset_required = each.value.password_reset_required # Forces password reset on first login.

}

# Creates a Secrets Manager secret to store IAM user passwords for each user with a login profile.
resource "aws_secretsmanager_secret" "iam_user_passwords" {

  # Loops through each IAM user login profile created above.
  for_each = aws_iam_user_login_profile.this

  name        = "iam-user/${each.key}"
  description = "Password for IAM user '${each.key}', must be changed on first login."

  # Tags for the secret, including the user name and any extra tags.
  tags = merge(
    {
      "User" = each.key
    },
    var.extra_tags
  )
}

# Stores the password value in the secret on secrets manager.
resource "aws_secretsmanager_secret_version" "iam_user_passwords" {

  # Loops through each IAM user login profile created above.
  for_each = aws_iam_user_login_profile.this

  # Reference to the secret created above.
  secret_id = aws_secretsmanager_secret.iam_user_passwords[each.key].id

  # The password generated for the user login profile.
  secret_string = jsonencode({
    "PASSWORD" = aws_iam_user_login_profile.this[each.key].password
  })

}

# Attaches the IAMUserChangePassword policy to IAM users.
resource "aws_iam_user_policy_attachment" "change_password" {

  # Iterates over each IAM user login profile to attach the IAMUserChangePassword policy.
  for_each = aws_iam_user_login_profile.this

  user       = each.key                                        # Sets the IAM username.
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword" # This policy allows users to change their own password.

}

# Create access keys for IAM users who require them.
resource "aws_iam_access_key" "this" {

  # Iterate over users in `var.users` who have `access_key_enabled = true`
  for_each = { for user in var.users : user.name => user if lookup(user, "access_key", false) }

  # Associate the access key with the IAM user.
  user = aws_iam_user.this[each.key].name

}

# Create a Secrets Manager secret to store IAM user access key credentials.
resource "aws_secretsmanager_secret" "iam_user_access_credentials" {

  # Loops through each IAM access key created above.
  for_each = aws_iam_access_key.this

  name        = "iam-user/${each.key}"
  description = "Access key credentials for IAM user ${each.key}"

  # Tags for the secret, including the user name and any extra tags.
  tags = merge(
    {
      "User" = each.key
    },
    var.extra_tags
  )

}

# Store the access key credentials in the Secrets Manager secret.
resource "aws_secretsmanager_secret_version" "iam_user_access_credentials" {

  # Loops through each IAM access key created above.
  for_each = aws_iam_access_key.this

  secret_id = aws_secretsmanager_secret.iam_user_access_credentials[each.key].id # Reference to the secret created above.

  # The secret string contains the access key ID and secret access key in JSON format.
  secret_string = jsonencode({
    "AWS_ACCESS_KEY_ID"     = aws_iam_access_key.this[each.key].id
    "AWS_SECRET_ACCESS_KEY" = aws_iam_access_key.this[each.key].secret
  })
}

################################################################################################################
###############################                GROUPS                  #########################################
################################################################################################################

# Creates IAM groups based on the list provided in `var.groups`.
resource "aws_iam_group" "this" {

  # Iterates over each group in `var.groups`.
  for_each = { for group in var.groups : group.name => group }

  name = each.value.name # Sets the IAM group name.
  path = each.value.path # Defines the IAM group path.

}