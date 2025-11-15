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