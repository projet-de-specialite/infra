# infra
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.63.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.63.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_projet_de_specialite_bucket_posts"></a> [projet\_de\_specialite\_bucket\_posts](#module\_projet\_de\_specialite\_bucket\_posts) | ./modules/bucket | n/a |
| <a name="module_projet_de_specialite_bucket_profile"></a> [projet\_de\_specialite\_bucket\_profile](#module\_projet\_de\_specialite\_bucket\_profile) | ./modules/bucket | n/a |
| <a name="module_projet_de_specialite_cloud_sql_connect_to_vpc"></a> [projet\_de\_specialite\_cloud\_sql\_connect\_to\_vpc](#module\_projet\_de\_specialite\_cloud\_sql\_connect\_to\_vpc) | ./modules/service-networking-connection | n/a |
| <a name="module_projet_de_specialite_cloud_sql_private_ip"></a> [projet\_de\_specialite\_cloud\_sql\_private\_ip](#module\_projet\_de\_specialite\_cloud\_sql\_private\_ip) | ./modules/compute-global-address | n/a |
| <a name="module_projet_de_specialite_db_auth"></a> [projet\_de\_specialite\_db\_auth](#module\_projet\_de\_specialite\_db\_auth) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_comments"></a> [projet\_de\_specialite\_db\_comments](#module\_projet\_de\_specialite\_db\_comments) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_mp"></a> [projet\_de\_specialite\_db\_mp](#module\_projet\_de\_specialite\_db\_mp) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_posts"></a> [projet\_de\_specialite\_db\_posts](#module\_projet\_de\_specialite\_db\_posts) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_profile"></a> [projet\_de\_specialite\_db\_profile](#module\_projet\_de\_specialite\_db\_profile) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_subs"></a> [projet\_de\_specialite\_db\_subs](#module\_projet\_de\_specialite\_db\_subs) | ./modules/cloud-sql-database | n/a |
| <a name="module_projet_de_specialite_db_user_auth"></a> [projet\_de\_specialite\_db\_user\_auth](#module\_projet\_de\_specialite\_db\_user\_auth) | ./modules/cloud-sql-user | n/a |
| <a name="module_projet_de_specialite_db_user_comments"></a> [projet\_de\_specialite\_db\_user\_comments](#module\_projet\_de\_specialite\_db\_user\_comments) | ./modules/cloud-sql-user | n/a |
| <a name="module_projet_de_specialite_db_user_mp"></a> [projet\_de\_specialite\_db\_user\_mp](#module\_projet\_de\_specialite\_db\_user\_mp) | ./modules/cloud-sql-user | n/a |
| <a name="module_projet_de_specialite_db_user_posts"></a> [projet\_de\_specialite\_db\_user\_posts](#module\_projet\_de\_specialite\_db\_user\_posts) | ./modules/cloud-sql-user | n/a |
| <a name="module_projet_de_specialite_db_user_profile"></a> [projet\_de\_specialite\_db\_user\_profile](#module\_projet\_de\_specialite\_db\_user\_profile) | ./modules/cloud-sql-user | n/a |
| <a name="module_projet_de_specialite_db_user_subs"></a> [projet\_de\_specialite\_db\_user\_subs](#module\_projet\_de\_specialite\_db\_user\_subs) | ./modules/cloud-sql-user | n/a |
| <a name="module_projet_de_specialite_dns_record_compute_instance_public_app"></a> [projet\_de\_specialite\_dns\_record\_compute\_instance\_public\_app](#module\_projet\_de\_specialite\_dns\_record\_compute\_instance\_public\_app) | ./modules/dns-record | n/a |
| <a name="module_projet_de_specialite_dns_zone"></a> [projet\_de\_specialite\_dns\_zone](#module\_projet\_de\_specialite\_dns\_zone) | ./modules/dns-zone | n/a |
| <a name="module_projet_de_specialite_instance_cloud_sql_mysql"></a> [projet\_de\_specialite\_instance\_cloud\_sql\_mysql](#module\_projet\_de\_specialite\_instance\_cloud\_sql\_mysql) | ./modules/cloud-sql-instance | n/a |
| <a name="module_projet_de_specialite_instance_cloud_sql_postgres"></a> [projet\_de\_specialite\_instance\_cloud\_sql\_postgres](#module\_projet\_de\_specialite\_instance\_cloud\_sql\_postgres) | ./modules/cloud-sql-instance | n/a |
| <a name="module_projet_de_specialite_instance_private_auth"></a> [projet\_de\_specialite\_instance\_private\_auth](#module\_projet\_de\_specialite\_instance\_private\_auth) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_comments"></a> [projet\_de\_specialite\_instance\_private\_comments](#module\_projet\_de\_specialite\_instance\_private\_comments) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_feed"></a> [projet\_de\_specialite\_instance\_private\_feed](#module\_projet\_de\_specialite\_instance\_private\_feed) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_mp"></a> [projet\_de\_specialite\_instance\_private\_mp](#module\_projet\_de\_specialite\_instance\_private\_mp) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_posts"></a> [projet\_de\_specialite\_instance\_private\_posts](#module\_projet\_de\_specialite\_instance\_private\_posts) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_profile"></a> [projet\_de\_specialite\_instance\_private\_profile](#module\_projet\_de\_specialite\_instance\_private\_profile) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_private_subs"></a> [projet\_de\_specialite\_instance\_private\_subs](#module\_projet\_de\_specialite\_instance\_private\_subs) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_instance_public_app"></a> [projet\_de\_specialite\_instance\_public\_app](#module\_projet\_de\_specialite\_instance\_public\_app) | ./modules/compute | n/a |
| <a name="module_projet_de_specialite_nat"></a> [projet\_de\_specialite\_nat](#module\_projet\_de\_specialite\_nat) | ./modules/nat | n/a |
| <a name="module_projet_de_specialite_router"></a> [projet\_de\_specialite\_router](#module\_projet\_de\_specialite\_router) | ./modules/router | n/a |
| <a name="module_projet_de_specialite_service_account_auth"></a> [projet\_de\_specialite\_service\_account\_auth](#module\_projet\_de\_specialite\_service\_account\_auth) | ./modules/service-account | n/a |
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
| [google_compute_firewall.projet-de-specialite-cloud-sql](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.projet-de-specialite-firewall-deny-all](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.projet-de-specialite-firewall-private-interconnect](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.projet-de-specialite-firewall-public-allow-ssh](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.projet-de-specialite-firewall-public-app-allow-http](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.projet-de-specialite-firewall-public-private-interconnect](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/compute_firewall) | resource |
| [google_project_iam_binding.projet_de_specialite_cloud_ops_agent](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.projet_de_specialite_iam_cloud_sql](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/project_iam_binding) | resource |
| [google_storage_bucket_iam_policy.projet_de_specialite_posts_bucket_iam_policy](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/storage_bucket_iam_policy) | resource |
| [google_storage_bucket_iam_policy.projet_de_specialite_profile_bucket_iam_policy](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/resources/storage_bucket_iam_policy) | resource |
| [google_iam_policy.projet_de_specialite_posts_bucket_iam](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/data-sources/iam_policy) | data source |
| [google_iam_policy.projet_de_specialite_profile_bucket_iam](https://registry.terraform.io/providers/hashicorp/google/4.63.1/docs/data-sources/iam_policy) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->