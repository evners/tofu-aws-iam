<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |
| [aws_iam_group_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy) | resource |
| [aws_iam_group_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_login_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_login_profile) | resource |
| [aws_iam_user_policy_attachment.change_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_secretsmanager_secret.iam_user_access_credentials](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret.iam_user_passwords](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.iam_user_access_credentials](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_secretsmanager_secret_version.iam_user_passwords](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | A map of extra tags to add to all resources created by the module. | `map(string)` | `{}` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | List of IAM groups to create, including managed and inline policies | <pre>list(object({<br>    name             = string<br>    path             = optional(string, "/")<br>    managed_policies = optional(list(string), [])<br>    inline_policies = optional(list(object({<br>      name   = string<br>      policy = string<br>    })), [])<br>  }))</pre> | `[]` | no |
| <a name="input_users"></a> [users](#input\_users) | List of IAM users to create. | <pre>list(object({<br>    name                    = string<br>    path                    = optional(string, "/")<br>    force_destroy           = optional(bool, false)<br>    console_access          = optional(bool, false)<br>    password_length         = optional(number, 16)<br>    password_reset_required = optional(bool, true)<br>    access_key              = optional(bool, false)<br>    groups                  = optional(list(string), [])<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_group_arns"></a> [group\_arns](#output\_group\_arns) | Map of IAM group names to their corresponding ARNs. |
| <a name="output_user_arns"></a> [user\_arns](#output\_user\_arns) | Map of IAM user names to their corresponding ARNs. |
<!-- END_TF_DOCS -->
