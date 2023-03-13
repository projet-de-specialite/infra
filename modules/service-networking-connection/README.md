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
| [google_service_networking_connection.service_networking_connection](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_networking_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_service_networking_connection_network"></a> [service\_networking\_connection\_network](#input\_service\_networking\_connection\_network) | Network for Service Networking Connection | `string` | n/a | yes |
| <a name="input_service_networking_connection_reserved_peering_ranges"></a> [service\_networking\_connection\_reserved\_peering\_ranges](#input\_service\_networking\_connection\_reserved\_peering\_ranges) | Peering ranges | `list(string)` | n/a | yes |
| <a name="input_service_networking_connection_service"></a> [service\_networking\_connection\_service](#input\_service\_networking\_connection\_service) | Service for Service Networking Connection | `string` | `"servicenetworking.googleapis.com"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_networking_connection_id"></a> [service\_networking\_connection\_id](#output\_service\_networking\_connection\_id) | Service Networking Connection id |
<!-- END_TF_DOCS -->