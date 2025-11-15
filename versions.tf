terraform {
  # Specify the Terraform version.
  required_version = ">= 1.10.6"

  # Specify the required providers and their versions.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.21"
    }
  }
}