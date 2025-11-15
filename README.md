<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.10.6 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | ~> 6.21   |

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | 6.21.0  |

## Modules

No modules.

## Resources

| Name                                                                                                           | Type     |
| -------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name                                                               | Description                                                                    | Type     | Default | Required |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------------ | -------- | ------- | :------: |
| <a name="input_bucket_name"></a> [bucket_name](#input_bucket_name) | A unique and descriptive name for the primary resource managed by this module. | `string` | n/a     |   yes    |

## Outputs

| Name                                                                    | Description                                         |
| ----------------------------------------------------------------------- | --------------------------------------------------- |
| <a name="output_resource_arn"></a> [resource_arn](#output_resource_arn) | The ARN of the main resource.                       |
| <a name="output_resource_id"></a> [resource_id](#output_resource_id)    | The ID of the main resource created by this module. |

<!-- END_TF_DOCS -->
