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
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | Name of the router | `string` | n/a | yes |
| <a name="input_subnet_region"></a> [subnet\_region](#input\_subnet\_region) | Region of the subnet | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_router_name"></a> [router\_name](#output\_router\_name) | Name of the router |
| <a name="output_router_region"></a> [router\_region](#output\_router\_region) | Region of the router |
<!-- END_TF_DOCS -->