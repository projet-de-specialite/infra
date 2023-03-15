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
| [google_sql_user.cloud_sql_user](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_sql_user_instance"></a> [cloud\_sql\_user\_instance](#input\_cloud\_sql\_user\_instance) | Name of the Cloud SQL instance | `string` | n/a | yes |
| <a name="input_cloud_sql_user_type"></a> [cloud\_sql\_user\_type](#input\_cloud\_sql\_user\_type) | Type of the user | `string` | n/a | yes |
| <a name="input_cloud_sql_user_username"></a> [cloud\_sql\_user\_username](#input\_cloud\_sql\_user\_username) | User name of the Cloud SQL user | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_user_name"></a> [db\_user\_name](#output\_db\_user\_name) | Name of the Cloud SQL user |
<!-- END_TF_DOCS -->