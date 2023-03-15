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
| [google_dns_record_set.dns_record](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_record_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_record_name"></a> [dns\_record\_name](#input\_dns\_record\_name) | DNS record name | `string` | n/a | yes |
| <a name="input_dns_record_rrdatas"></a> [dns\_record\_rrdatas](#input\_dns\_record\_rrdatas) | DNS rrdatas | `list(string)` | n/a | yes |
| <a name="input_dns_record_ttl"></a> [dns\_record\_ttl](#input\_dns\_record\_ttl) | DNS record TTL | `number` | `300` | no |
| <a name="input_dns_record_type"></a> [dns\_record\_type](#input\_dns\_record\_type) | DNS field | `string` | n/a | yes |
| <a name="input_dns_zone_dns_name"></a> [dns\_zone\_dns\_name](#input\_dns\_zone\_dns\_name) | Managed DNS zone DNS name | `string` | n/a | yes |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | Managed DNS zone name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->