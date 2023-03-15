<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.compute](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_enable_external_ip"></a> [compute\_enable\_external\_ip](#input\_compute\_enable\_external\_ip) | Enable or disable external IP | `bool` | n/a | yes |
| <a name="input_compute_name"></a> [compute\_name](#input\_compute\_name) | Name of your VM | `string` | n/a | yes |
| <a name="input_compute_os"></a> [compute\_os](#input\_compute\_os) | Instance's OS | `string` | n/a | yes |
| <a name="input_compute_private_ip"></a> [compute\_private\_ip](#input\_compute\_private\_ip) | Instance private IP | `string` | n/a | yes |
| <a name="input_compute_service_account_email"></a> [compute\_service\_account\_email](#input\_compute\_service\_account\_email) | Email of the service account | `string` | `""` | no |
| <a name="input_compute_service_account_scopes"></a> [compute\_service\_account\_scopes](#input\_compute\_service\_account\_scopes) | Scopes of the service account | `list(string)` | <pre>[<br>  "cloud-platform"<br>]</pre> | no |
| <a name="input_compute_ssh_key"></a> [compute\_ssh\_key](#input\_compute\_ssh\_key) | SSH key | `string` | n/a | yes |
| <a name="input_compute_tags"></a> [compute\_tags](#input\_compute\_tags) | Tags of the instance | `list(string)` | n/a | yes |
| <a name="input_compute_type"></a> [compute\_type](#input\_compute\_type) | Type of your VM | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Subnet name | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_compute_id"></a> [compute\_id](#output\_compute\_id) | ID of the compute |
| <a name="output_compute_internal_ip"></a> [compute\_internal\_ip](#output\_compute\_internal\_ip) | Internal IP of the compute |
| <a name="output_compute_name"></a> [compute\_name](#output\_compute\_name) | Name of the compute |
| <a name="output_compute_public_ip"></a> [compute\_public\_ip](#output\_compute\_public\_ip) | Public IP of the compute |
<!-- END_TF_DOCS -->