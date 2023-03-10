# infra
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.56.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.56.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_projet_de_specialite_bucket_posts"></a> [projet\_de\_specialite\_bucket\_posts](#module\_projet\_de\_specialite\_bucket\_posts) | ./modules/bucket | n/a |
| <a name="module_projet_de_specialite_bucket_profile"></a> [projet\_de\_specialite\_bucket\_profile](#module\_projet\_de\_specialite\_bucket\_profile) | ./modules/bucket | n/a |
| <a name="module_projet_de_specialite_db_comments"></a> [projet\_de\_specialite\_db\_comments](#module\_projet\_de\_specialite\_db\_comments) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_mp"></a> [projet\_de\_specialite\_db\_mp](#module\_projet\_de\_specialite\_db\_mp) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_posts"></a> [projet\_de\_specialite\_db\_posts](#module\_projet\_de\_specialite\_db\_posts) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_profile"></a> [projet\_de\_specialite\_db\_profile](#module\_projet\_de\_specialite\_db\_profile) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_subs"></a> [projet\_de\_specialite\_db\_subs](#module\_projet\_de\_specialite\_db\_subs) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_instance_cloud_sql_mysql"></a> [projet\_de\_specialite\_instance\_cloud\_sql\_mysql](#module\_projet\_de\_specialite\_instance\_cloud\_sql\_mysql) | ./modules/cloud-sql-instance | n/a |
| <a name="module_projet_de_specialite_instance_cloud_sql_postgres"></a> [projet\_de\_specialite\_instance\_cloud\_sql\_postgres](#module\_projet\_de\_specialite\_instance\_cloud\_sql\_postgres) | ./modules/cloud-sql-instance | n/a |
| <a name="module_projet_de_specialite_instance_private_comments"></a> [projet\_de\_specialite\_instance\_private\_comments](#module\_projet\_de\_specialite\_instance\_private\_comments) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_feed"></a> [projet\_de\_specialite\_instance\_private\_feed](#module\_projet\_de\_specialite\_instance\_private\_feed) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_mp"></a> [projet\_de\_specialite\_instance\_private\_mp](#module\_projet\_de\_specialite\_instance\_private\_mp) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_posts"></a> [projet\_de\_specialite\_instance\_private\_posts](#module\_projet\_de\_specialite\_instance\_private\_posts) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_profile"></a> [projet\_de\_specialite\_instance\_private\_profile](#module\_projet\_de\_specialite\_instance\_private\_profile) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_subs"></a> [projet\_de\_specialite\_instance\_private\_subs](#module\_projet\_de\_specialite\_instance\_private\_subs) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_public_app"></a> [projet\_de\_specialite\_instance\_public\_app](#module\_projet\_de\_specialite\_instance\_public\_app) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_service_account_comments"></a> [projet\_de\_specialite\_service\_account\_comments](#module\_projet\_de\_specialite\_service\_account\_comments) | ./modules/service-account | n/a |
| <a name="module_projet_de_specialite_service_account_mp"></a> [projet\_de\_specialite\_service\_account\_mp](#module\_projet\_de\_specialite\_service\_account\_mp) | ./modules/service-account | n/a |
| <a name="module_projet_de_specialite_service_account_posts"></a> [projet\_de\_specialite\_service\_account\_posts](#module\_projet\_de\_specialite\_service\_account\_posts) | ./modules/service-account | n/a |
| <a name="module_projet_de_specialite_service_account_profile"></a> [projet\_de\_specialite\_service\_account\_profile](#module\_projet\_de\_specialite\_service\_account\_profile) | ./modules/service-account | n/a |
| <a name="module_projet_de_specialite_service_account_subs"></a> [projet\_de\_specialite\_service\_account\_subs](#module\_projet\_de\_specialite\_service\_account\_subs) | ./modules/service-account | n/a |
| <a name="module_projet_de_specialite_subnet_private"></a> [projet\_de\_specialite\_subnet\_private](#module\_projet\_de\_specialite\_subnet\_private) | ./modules/subnet | n/a |
| <a name="module_projet_de_specialite_subnet_public"></a> [projet\_de\_specialite\_subnet\_public](#module\_projet\_de\_specialite\_subnet\_public) | ./modules/subnet | n/a |
| <a name="module_projet_de_specialite_vpc"></a> [projet\_de\_specialite\_vpc](#module\_projet\_de\_specialite\_vpc) | ./modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [google_sql_user.projet_de_specialite_db_user_comments](https://registry.terraform.io/providers/hashicorp/google/4.56.0/docs/resources/sql_user) | resource |
| [google_sql_user.projet_de_specialite_db_user_mp](https://registry.terraform.io/providers/hashicorp/google/4.56.0/docs/resources/sql_user) | resource |
| [google_sql_user.projet_de_specialite_db_user_posts](https://registry.terraform.io/providers/hashicorp/google/4.56.0/docs/resources/sql_user) | resource |
| [google_sql_user.projet_de_specialite_db_user_profile](https://registry.terraform.io/providers/hashicorp/google/4.56.0/docs/resources/sql_user) | resource |
| [google_sql_user.projet_de_specialite_db_user_subs](https://registry.terraform.io/providers/hashicorp/google/4.56.0/docs/resources/sql_user) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->