# terraform-aws-module-ecr

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=4.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_lifecycle_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption_kms_key_arn"></a> [encryption\_kms\_key\_arn](#input\_encryption\_kms\_key\_arn) | KMS key to use for encrypting the ECR repository. If left empty the default AWS managed key is used. | `string` | `null` | no |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | Set to true to enable tag mutability. Defaults to false. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Unique name for the ECR repository. | `string` | n/a | yes |
| <a name="input_num_keep_images"></a> [num\_keep\_images](#input\_num\_keep\_images) | Keep the X most recent images. | `number` | `100` | no |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | Scan pushed images for vulnerabilities. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecr_repository_arn"></a> [ecr\_repository\_arn](#output\_ecr\_repository\_arn) | Full ARN of the repository |
| <a name="output_ecr_repository_url"></a> [ecr\_repository\_url](#output\_ecr\_repository\_url) | URL of the repository (in the form aws\_account\_id.dkr.ecr.region.amazonaws.com/repositoryName) |
<!-- END_TF_DOCS -->