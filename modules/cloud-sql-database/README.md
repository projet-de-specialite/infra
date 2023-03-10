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
| [google_sql_database.cloud_sql_database](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_sql_database_charset"></a> [cloud\_sql\_database\_charset](#input\_cloud\_sql\_database\_charset) | (optional) charset of the database | `string` | `"utf8"` | no |
| <a name="input_cloud_sql_database_collation"></a> [cloud\_sql\_database\_collation](#input\_cloud\_sql\_database\_collation) | (optional) collation of the database | `string` | `"utf8_general_ci"` | no |
| <a name="input_cloud_sql_database_instance"></a> [cloud\_sql\_database\_instance](#input\_cloud\_sql\_database\_instance) | Cloud SQL instance where the database must be created | `string` | n/a | yes |
| <a name="input_cloud_sql_database_name"></a> [cloud\_sql\_database\_name](#input\_cloud\_sql\_database\_name) | Name of the database | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_name"></a> [db\_name](#output\_db\_name) | Cloud SQL Database name |
<!-- END_TF_DOCS -->