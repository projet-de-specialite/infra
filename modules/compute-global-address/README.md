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
| [google_compute_global_address.compute_global_address](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_global_address_address"></a> [compute\_global\_address\_address](#input\_compute\_global\_address\_address) | Address | `string` | n/a | yes |
| <a name="input_compute_global_address_address_type"></a> [compute\_global\_address\_address\_type](#input\_compute\_global\_address\_address\_type) | Address type (EXTERNAL/INTERNAL) | `string` | n/a | yes |
| <a name="input_compute_global_address_name"></a> [compute\_global\_address\_name](#input\_compute\_global\_address\_name) | Name of the Compute Global Address | `string` | n/a | yes |
| <a name="input_compute_global_address_network"></a> [compute\_global\_address\_network](#input\_compute\_global\_address\_network) | VPC for the Compute Global Address | `string` | n/a | yes |
| <a name="input_compute_global_address_prefix_length"></a> [compute\_global\_address\_prefix\_length](#input\_compute\_global\_address\_prefix\_length) | Address prefix length | `number` | n/a | yes |
| <a name="input_compute_global_address_purpose"></a> [compute\_global\_address\_purpose](#input\_compute\_global\_address\_purpose) | Purpose (please see docs) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_compute_global_address_name"></a> [compute\_global\_address\_name](#output\_compute\_global\_address\_name) | Name of the Compute Global Address |
<!-- END_TF_DOCS -->