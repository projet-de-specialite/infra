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
| [google_firestore_database.cloud_firestore_database](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/firestore_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_firestore_database_app_engine_integration_mode"></a> [cloud\_firestore\_database\_app\_engine\_integration\_mode](#input\_cloud\_firestore\_database\_app\_engine\_integration\_mode) | The App Engine integration mode to use for this database | `string` | n/a | yes |
| <a name="input_cloud_firestore_database_concurrency_mode"></a> [cloud\_firestore\_database\_concurrency\_mode](#input\_cloud\_firestore\_database\_concurrency\_mode) | The concurrency control mode to use for this database | `string` | n/a | yes |
| <a name="input_cloud_firestore_database_location_id"></a> [cloud\_firestore\_database\_location\_id](#input\_cloud\_firestore\_database\_location\_id) | Location ID of the database | `string` | n/a | yes |
| <a name="input_cloud_firestore_database_name"></a> [cloud\_firestore\_database\_name](#input\_cloud\_firestore\_database\_name) | Name of the database | `string` | n/a | yes |
| <a name="input_cloud_firestore_database_type"></a> [cloud\_firestore\_database\_type](#input\_cloud\_firestore\_database\_type) | Type of the database | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->