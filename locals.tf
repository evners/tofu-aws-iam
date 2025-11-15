# This file defines local variables for the IAM module.
locals {
  ################################################################################################################
  ###############################                 USERS                  #########################################
  ################################################################################################################

  # Create a map of group memberships.
  groups_memberships = {
    # Map each group to a sorted list of user names who belong to that group.
    for group in distinct(flatten([for user in var.users : user.groups])) :
    # For each unique group, create an entry in the map.
    group => sort([
      for user in var.users : user.name if contains(user.groups, group)
    ])
  }
}
