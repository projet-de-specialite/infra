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
| [google_service_account.service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_service_account_account_id"></a> [service\_account\_account\_id](#input\_service\_account\_account\_id) | Service account ID | `string` | n/a | yes |
| <a name="input_service_account_display_name"></a> [service\_account\_display\_name](#input\_service\_account\_display\_name) | Service account display name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_account_email"></a> [service\_account\_email](#output\_service\_account\_email) | ID of the service account |
| <a name="output_service_account_id"></a> [service\_account\_id](#output\_service\_account\_id) | ID of the service account |
| <a name="output_service_account_name"></a> [service\_account\_name](#output\_service\_account\_name) | Name of the service account |
<!-- END_TF_DOCS -->