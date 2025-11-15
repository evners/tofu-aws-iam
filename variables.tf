################################################################################################################
###############################                 USERS                  #########################################
################################################################################################################

variable "users" {
  description = "List of IAM users to create."
  type = list(object({
    name                    = string
    path                    = optional(string, "/")
    force_destroy           = optional(bool, false)
    console_access          = optional(bool, false)
    password_length         = optional(number, 16)
    password_reset_required = optional(bool, true)
    access_key              = optional(bool, false)
    groups                  = optional(list(string), [])
  }))
  default = []
}

################################################################################################################
###############################                GROUPS                  #########################################
################################################################################################################

variable "groups" {
  description = "List of IAM groups to create, including managed and inline policies"
  type = list(object({
    name = string
    path = optional(string, "/")
  }))
  default = []
}

################################################################################################################
###############################                 TAGS                   #########################################
################################################################################################################

variable "extra_tags" {
  description = "A map of extra tags to add to all resources created by the module."
  type        = map(string)
  default     = {}
}