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
| [google_sql_database_instance.cloud_sql_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_sql_instance_enable_private"></a> [cloud\_sql\_instance\_enable\_private](#input\_cloud\_sql\_instance\_enable\_private) | Enable or disable private IP instance | `bool` | n/a | yes |
| <a name="input_cloud_sql_instance_name"></a> [cloud\_sql\_instance\_name](#input\_cloud\_sql\_instance\_name) | Cloud SQL instance name | `string` | n/a | yes |
| <a name="input_cloud_sql_instance_tier"></a> [cloud\_sql\_instance\_tier](#input\_cloud\_sql\_instance\_tier) | Cloud SQL VM | `string` | n/a | yes |
| <a name="input_cloud_sql_instance_version"></a> [cloud\_sql\_instance\_version](#input\_cloud\_sql\_instance\_version) | The MySQL, PostgreSQL or SQL Server version to use | `string` | n/a | yes |
| <a name="input_cloud_sql_instance_vpc"></a> [cloud\_sql\_instance\_vpc](#input\_cloud\_sql\_instance\_vpc) | Private VPC name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_instance_name"></a> [db\_instance\_name](#output\_db\_instance\_name) | Name of the Cloud SQL instance |
<!-- END_TF_DOCS -->