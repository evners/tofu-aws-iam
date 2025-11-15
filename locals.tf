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

  ################################################################################################################
  ###############################                GROUPS                  #########################################
  ################################################################################################################

  # Create a flat map for group managed policy attachments.
  # For each group in var.groups, iterate over its managed_policies (if any) and build a list of objects with group and policy_arn fields.
  group_managed_policies = {
    for pair in flatten([
      # Iterate over all groups.
      for group in var.groups : [
        # For each managed policy in the group (if any), create an object.
        for policy in try(group.managed_policies, []) : {
          group      = group.name
          policy_arn = policy
        }
      ]
    ]) :
    # Use a unique key combining group and policy ARN.
    "${pair.group}-${pair.policy_arn}" => {
      group      = pair.group
      policy_arn = pair.policy_arn
    }
  }
}
