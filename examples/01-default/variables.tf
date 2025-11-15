# Define the input variables for the module.
# Example: Placeholder for a simple variable definition used by the main resource.

variable "aws_region" {
  description = "The AWS region in which to create resources."
  type        = string
  default     = "eu-west-1"
}

variable "bucket_name" {
  description = "A unique and descriptive name for the primary resource managed by this module."
  type        = string
}