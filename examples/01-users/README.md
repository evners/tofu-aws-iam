## Example: Create IAM Users

This example shows how to create **IAM Users** with optional console access. It also stores the generated passwords in **AWS Systems Manager Parameter Store** as `SecureString`. To use this example, please create `tfvars` file:

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
