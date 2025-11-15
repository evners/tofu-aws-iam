# Example of how to use the module with the minimum configuration required.

module "example" {
  # Path to the module source code.
  source = "../.."

  # Settings
  bucket_name = var.bucket_name
}