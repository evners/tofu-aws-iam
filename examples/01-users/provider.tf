# Provider configuration for the default AWS region.
provider "aws" {

  # Set the AWS region to the value specified in the 'region' variable.
  region = var.aws_region

  # Apply default tags to all resources managed by this provider.
  default_tags {
    tags = {
      "OpenTofu"   = "true"                                       # Tag all resources to indicate they are managed by OpenTofu.
      "Repository" = "https://github.com/evners/tofu-aws-iam.git" # Repository name.
    }
  }
}