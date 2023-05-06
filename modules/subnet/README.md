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
| [google_compute_subnetwork.subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnet_ip_range"></a> [subnet\_ip\_range](#input\_subnet\_ip\_range) | IP CIDR range of the subnet | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name of the subnet | `string` | n/a | yes |
| <a name="input_subnet_network_name"></a> [subnet\_network\_name](#input\_subnet\_network\_name) | Name of the network you would like to create a subnet | `string` | n/a | yes |
| <a name="input_subnet_private_ip_google_access"></a> [subnet\_private\_ip\_google\_access](#input\_subnet\_private\_ip\_google\_access) | Enable Private IP Google access | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | Name of the subnet |
| <a name="output_subnet_region"></a> [subnet\_region](#output\_subnet\_region) | Region of the subnet |
| <a name="output_subnet_self_link"></a> [subnet\_self\_link](#output\_subnet\_self\_link) | ID of the subnet |
<!-- END_TF_DOCS -->