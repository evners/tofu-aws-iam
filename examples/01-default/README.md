## TOFU-MODULE: Example

This example shows how to create **S3 Bucket** with default configuration.

```bash
touch default.auto.tfvars
```

Once the `tfvars` is created, please update with your own configuration:

```bash
# S3
bucket_name = "randombucketname"
```

Now, you can create resources with:

```bash
tofu init && tofu apply
```

That's all, happy coding!
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.27 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_example"></a> [example](#module\_example) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region in which to create resources. | `string` | `"eu-west-1"` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | A unique and descriptive name for the primary resource managed by this module. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
