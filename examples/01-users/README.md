## TOFU-MODULE: Example

This example shows how to create **S3 Bucket** with default configuration.

```bash
touch default.auto.tfvars
```

Once the `tfvars` is created, please update with your own configuration:

```bash
# AWS
aws_region = "eu-west-1"
```

Now, you can create resources with:

```bash
tofu init && tofu apply
```

That's all, happy coding!
