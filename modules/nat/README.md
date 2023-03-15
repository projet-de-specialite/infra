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
| [google_compute_router_nat.nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nat_ip_allocate_option"></a> [nat\_ip\_allocate\_option](#input\_nat\_ip\_allocate\_option) | How external IPs should be allocated for this NAT | `string` | n/a | yes |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | Name of the NAT | `string` | n/a | yes |
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | Name of the router | `string` | n/a | yes |
| <a name="input_router_region"></a> [router\_region](#input\_router\_region) | Region of the router | `string` | n/a | yes |
| <a name="input_source_ip_ranges_to_nat"></a> [source\_ip\_ranges\_to\_nat](#input\_source\_ip\_ranges\_to\_nat) | List of the secondary ranges of the subnetwork that are allowed to use NAT | `list(string)` | n/a | yes |
| <a name="input_source_subnetwork_ip_ranges_to_nat"></a> [source\_subnetwork\_ip\_ranges\_to\_nat](#input\_source\_subnetwork\_ip\_ranges\_to\_nat) | How NAT should be configured per subnetwork | `string` | n/a | yes |
| <a name="input_subnetwork_to_nat"></a> [subnetwork\_to\_nat](#input\_subnetwork\_to\_nat) | Self-link of subnetwork to NAT | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nat_id"></a> [nat\_id](#output\_nat\_id) | ID of the NAT |
| <a name="output_nat_name"></a> [nat\_name](#output\_nat\_name) | Name of the NAT |
<!-- END_TF_DOCS -->