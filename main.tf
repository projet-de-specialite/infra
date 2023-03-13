module "projet_de_specialite_vpc" {
  source   = "./modules/vpc"
  vpc_name = "projet-de-specialite-vpc"
}

module "projet_de_specialite_subnet_public" {
  source              = "./modules/subnet"
  subnet_name         = "subnet-public"
  subnet_ip_range     = "10.1.0.0/16"
  subnet_network_name = module.projet_de_specialite_vpc.vpc_name
  depends_on = [
    module.projet_de_specialite_vpc
  ]
}

module "projet_de_specialite_subnet_private" {
  source              = "./modules/subnet"
  subnet_name         = "subnet-private"
  subnet_ip_range     = "10.2.0.0/16"
  subnet_network_name = module.projet_de_specialite_vpc.vpc_name
  depends_on = [
    module.projet_de_specialite_vpc
  ]
}

module "projet_de_specialite_router" {
  source        = "./modules/router"
  router_name   = "projet-de-specialite-router"
  subnet_region = module.projet_de_specialite_subnet_public.subnet_region
  vpc_id        = module.projet_de_specialite_vpc.vpc_id
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_public
  ]
}

module "projet_de_specialite_nat" {
  source                             = "./modules/nat"
  nat_name                           = "projet-de-specialite-nat"
  router_name                        = module.projet_de_specialite_router.router_name
  router_region                      = module.projet_de_specialite_router.router_region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork_to_nat                  = module.projet_de_specialite_subnet_private.subnet_self_link
  source_ip_ranges_to_nat            = ["ALL_IP_RANGES"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_private,
    module.projet_de_specialite_router
  ]
}

module "projet_de_specialite_instance_public_app" {
  source                     = "./modules/compute"
  compute_name               = "projet-de-specialite-compute-public-app"
  compute_type               = "e2-micro"
  compute_os                 = "debian-cloud/debian-11"
  compute_ssh_key            = "gaetanlhf:${file("ssh_keys/gaetanlhf.pub")}\nsharonn:${file("ssh_keys/sharonn.pub")}\nmouad:${file("ssh_keys/mouad.pub")}\nloic:${file("ssh_keys/loic.pub")}\naugustin:${file("ssh_keys/augustin.pub")}\nsohaib:${file("ssh_keys/sohaib.pub")}"
  vpc_name                   = module.projet_de_specialite_vpc.vpc_name
  subnet_name                = module.projet_de_specialite_subnet_public.subnet_name
  compute_private_ip         = "10.1.0.2"
  compute_enable_external_ip = true
  compute_tags               = ["projet-de-specialite-compute", "projet-de-specialite-compute-public", "projet-de-specialite-compute-public-app"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_public
  ]
}

module "projet_de_specialite_cloud_sql_private_ip" {
  source                               = "./modules/compute-global-address"
  compute_global_address_name          = "cloud-sql-private-ip"
  compute_global_address_purpose       = "VPC_PEERING"
  compute_global_address_address_type  = "INTERNAL"
  compute_global_address_prefix_length = 16
  compute_global_address_address       = "10.3.0.0"
  compute_global_address_network       = module.projet_de_specialite_vpc.vpc_name
  depends_on = [
    module.projet_de_specialite_vpc
  ]
}

module "projet_de_specialite_cloud_sql_connect_to_vpc" {
  source                                                = "./modules/service-networking-connection"
  service_networking_connection_network                 = module.projet_de_specialite_vpc.vpc_name
  service_networking_connection_reserved_peering_ranges = [module.projet_de_specialite_cloud_sql_private_ip.compute_global_address_name]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_cloud_sql_private_ip
  ]
}

module "projet_de_specialite_instance_cloud_sql_postgres" {
  source                                       = "./modules/cloud-sql-instance"
  cloud_sql_instance_name                      = "projet-de-specialite-postegres"
  cloud_sql_instance_version                   = "POSTGRES_14"
  cloud_sql_instance_tier                      = "db-g1-small"
  cloud_sql_instance_deletion_protection       = false
  cloud_sql_instance_enable_private            = true
  cloud_sql_instance_enable_iam_authentication = true
  cloud_sql_instance_vpc                       = module.projet_de_specialite_vpc.vpc_id
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_cloud_sql_connect_to_vpc
  ]
}

module "projet_de_specialite_instance_cloud_sql_mysql" {
  source                                       = "./modules/cloud-sql-instance"
  cloud_sql_instance_name                      = "projet-de-specialite-mysql"
  cloud_sql_instance_version                   = "MYSQL_8_0"
  cloud_sql_instance_tier                      = "db-f1-micro"
  cloud_sql_instance_deletion_protection       = false
  cloud_sql_instance_enable_private            = true
  cloud_sql_instance_enable_iam_authentication = true
  cloud_sql_instance_vpc                       = module.projet_de_specialite_vpc.vpc_id
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_cloud_sql_connect_to_vpc
  ]
}

# Chourouq

module "projet_de_specialite_instance_private_auth" {
  source                         = "./modules/compute"
  compute_name                   = "projet-de-specialite-compute-private-auth"
  compute_type                   = "e2-micro"
  compute_os                     = "debian-cloud/debian-11"
  compute_ssh_key                = "\ngaetanlhf:${file("ssh_keys/gaetanlhf.pub")}\nsharonn:${file("ssh_keys/chourouq.pub")}"
  vpc_name                       = module.projet_de_specialite_vpc.vpc_name
  subnet_name                    = module.projet_de_specialite_subnet_private.subnet_name
  compute_private_ip             = "10.2.0.2"
  compute_enable_external_ip     = false
  compute_service_account_email  = module.projet_de_specialite_service_account_auth.service_account_email
  compute_service_account_scopes = ["storage-full", "sql-admin", "cloud-platform"]
  compute_tags                   = ["projet-de-specialite-compute", "projet-de-specialite-compute-private", "projet-de-specialite-compute-private-auth"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_private,
    module.projet_de_specialite_service_account_posts
  ]
}

module "projet_de_specialite_service_account_auth" {
  source                       = "./modules/service-account"
  service_account_account_id   = "service-account-auth"
  service_account_display_name = "Service account for Auth"
}

module "projet_de_specialite_db_auth" {
  source                      = "./modules/cloud-sql-database"
  cloud_sql_database_name     = "projet-de-specialite-db-auth"
  cloud_sql_database_instance = module.projet_de_specialite_instance_cloud_sql_mysql.db_instance_name
  depends_on = [
    module.projet_de_specialite_instance_cloud_sql_mysql
  ]
}

module "projet_de_specialite_db_user_auth" {
  source                  = "./modules/cloud-sql-user"
  cloud_sql_user_username = module.projet_de_specialite_service_account_auth.service_account_email
  cloud_sql_user_instance = module.projet_de_specialite_instance_cloud_sql_mysql.db_instance_name
  cloud_sql_user_type     = "CLOUD_IAM_SERVICE_ACCOUNT"
  depends_on = [
    module.projet_de_specialite_service_account_auth,
    module.projet_de_specialite_instance_cloud_sql_mysql
  ]
}

# Sharonn

module "projet_de_specialite_instance_private_posts" {
  source                         = "./modules/compute"
  compute_name                   = "projet-de-specialite-compute-private-posts"
  compute_type                   = "e2-micro"
  compute_os                     = "debian-cloud/debian-11"
  compute_ssh_key                = "\ngaetanlhf:${file("ssh_keys/gaetanlhf.pub")}\nsharonn:${file("ssh_keys/sharonn.pub")}"
  vpc_name                       = module.projet_de_specialite_vpc.vpc_name
  subnet_name                    = module.projet_de_specialite_subnet_private.subnet_name
  compute_private_ip             = "10.2.0.3"
  compute_enable_external_ip     = false
  compute_service_account_email  = module.projet_de_specialite_service_account_posts.service_account_email
  compute_service_account_scopes = ["storage-full", "sql-admin", "cloud-platform"]
  compute_tags                   = ["projet-de-specialite-compute", "projet-de-specialite-compute-private", "projet-de-specialite-compute-private-posts"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_private,
    module.projet_de_specialite_service_account_posts
  ]
}

module "projet_de_specialite_service_account_posts" {
  source                       = "./modules/service-account"
  service_account_account_id   = "service-account-posts"
  service_account_display_name = "Service account for Posts"
}

module "projet_de_specialite_bucket_posts" {
  source                             = "./modules/bucket"
  bucket_name                        = "projet-de-specialite-bucket-posts"
  bucket_location                    = "EU"
  bucket_force_destroy               = "true"
  bucket_storage_class               = "STANDARD"
  bucket_uniform_bucket_level_access = "false"
  bucket_public_access_prevention    = "inherited"
  depends_on = [
    module.projet_de_specialite_service_account_posts
  ]
}

module "projet_de_specialite_db_posts" {
  source                      = "./modules/cloud-sql-database"
  cloud_sql_database_name     = "projet-de-specialite-db-posts"
  cloud_sql_database_instance = module.projet_de_specialite_instance_cloud_sql_mysql.db_instance_name
  depends_on = [
    module.projet_de_specialite_instance_cloud_sql_mysql
  ]
}

module "projet_de_specialite_db_user_posts" {
  source                  = "./modules/cloud-sql-user"
  cloud_sql_user_username = module.projet_de_specialite_service_account_posts.service_account_email
  cloud_sql_user_instance = module.projet_de_specialite_instance_cloud_sql_mysql.db_instance_name
  cloud_sql_user_type     = "CLOUD_IAM_SERVICE_ACCOUNT"
  depends_on = [
    module.projet_de_specialite_service_account_posts,
    module.projet_de_specialite_instance_cloud_sql_mysql
  ]
}

# Mouad

module "projet_de_specialite_instance_private_profile" {
  source                         = "./modules/compute"
  compute_name                   = "projet-de-specialite-compute-private-profile"
  compute_type                   = "e2-micro"
  compute_os                     = "debian-cloud/debian-11"
  compute_ssh_key                = "\ngaetanlhf:${file("ssh_keys/gaetanlhf.pub")}\nmouad:${file("ssh_keys/mouad.pub")}"
  vpc_name                       = module.projet_de_specialite_vpc.vpc_name
  subnet_name                    = module.projet_de_specialite_subnet_private.subnet_name
  compute_private_ip             = "10.2.0.4"
  compute_enable_external_ip     = false
  compute_service_account_email  = module.projet_de_specialite_service_account_profile.service_account_email
  compute_service_account_scopes = ["storage-full", "sql-admin", "cloud-platform"]
  compute_tags                   = ["projet-de-specialite-compute", "projet-de-specialite-compute-private", "projet-de-specialite-compute-private-profile"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_private,
    module.projet_de_specialite_service_account_profile
  ]
}

module "projet_de_specialite_service_account_profile" {
  source                       = "./modules/service-account"
  service_account_account_id   = "service-account-profile"
  service_account_display_name = "Service account for Profile"
}

module "projet_de_specialite_bucket_profile" {
  source                             = "./modules/bucket"
  bucket_name                        = "projet-de-specialite-bucket-profile"
  bucket_location                    = "EU"
  bucket_force_destroy               = "true"
  bucket_storage_class               = "STANDARD"
  bucket_uniform_bucket_level_access = "false"
  bucket_public_access_prevention    = "inherited"
  depends_on = [
    module.projet_de_specialite_service_account_profile
  ]
}

module "projet_de_specialite_db_profile" {
  source                      = "./modules/cloud-sql-database"
  cloud_sql_database_name     = "projet-de-specialite-db-profile"
  cloud_sql_database_instance = module.projet_de_specialite_instance_cloud_sql_postgres.db_instance_name
  depends_on = [
    module.projet_de_specialite_instance_cloud_sql_postgres
  ]
}

module "projet_de_specialite_db_user_profile" {
  source                  = "./modules/cloud-sql-user"
  cloud_sql_user_username = module.projet_de_specialite_service_account_profile.service_account_id
  cloud_sql_user_instance = module.projet_de_specialite_instance_cloud_sql_postgres.db_instance_name
  cloud_sql_user_type     = "CLOUD_IAM_SERVICE_ACCOUNT"
  depends_on = [
    module.projet_de_specialite_service_account_profile,
    module.projet_de_specialite_instance_cloud_sql_postgres
  ]
}

# Loic

module "projet_de_specialite_instance_private_comments" {
  source                         = "./modules/compute"
  compute_name                   = "projet-de-specialite-compute-private-comments"
  compute_type                   = "e2-micro"
  compute_os                     = "debian-cloud/debian-11"
  compute_ssh_key                = "\ngaetanlhf:${file("ssh_keys/gaetanlhf.pub")}\nloic:${file("ssh_keys/loic.pub")}"
  vpc_name                       = module.projet_de_specialite_vpc.vpc_name
  subnet_name                    = module.projet_de_specialite_subnet_private.subnet_name
  compute_private_ip             = "10.2.0.5"
  compute_enable_external_ip     = false
  compute_service_account_email  = module.projet_de_specialite_service_account_comments.service_account_email
  compute_service_account_scopes = ["storage-full", "sql-admin", "cloud-platform"]
  compute_tags                   = ["projet-de-specialite-compute", "projet-de-specialite-compute-private", "projet-de-specialite-compute-private-comments"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_private,
    module.projet_de_specialite_service_account_comments
  ]
}

module "projet_de_specialite_service_account_comments" {
  source                       = "./modules/service-account"
  service_account_account_id   = "service-account-comments"
  service_account_display_name = "Service account for comments"
}

module "projet_de_specialite_db_comments" {
  source                      = "./modules/cloud-sql-database"
  cloud_sql_database_name     = "projet-de-specialite-db-comments"
  cloud_sql_database_instance = module.projet_de_specialite_instance_cloud_sql_postgres.db_instance_name
  depends_on = [
    module.projet_de_specialite_instance_cloud_sql_postgres
  ]
}

module "projet_de_specialite_db_user_comments" {
  source                  = "./modules/cloud-sql-user"
  cloud_sql_user_username = module.projet_de_specialite_service_account_comments.service_account_id
  cloud_sql_user_instance = module.projet_de_specialite_instance_cloud_sql_postgres.db_instance_name
  cloud_sql_user_type     = "CLOUD_IAM_SERVICE_ACCOUNT"
  depends_on = [
    module.projet_de_specialite_service_account_comments,
    module.projet_de_specialite_instance_cloud_sql_postgres
  ]
}

# Augustin

module "projet_de_specialite_instance_private_subs" {
  source                         = "./modules/compute"
  compute_name                   = "projet-de-specialite-compute-private-subs"
  compute_type                   = "e2-micro"
  compute_os                     = "debian-cloud/debian-11"
  compute_ssh_key                = "\ngaetanlhf:${file("ssh_keys/gaetanlhf.pub")}\naugustin:${file("ssh_keys/augustin.pub")}"
  vpc_name                       = module.projet_de_specialite_vpc.vpc_name
  subnet_name                    = module.projet_de_specialite_subnet_private.subnet_name
  compute_private_ip             = "10.2.0.6"
  compute_enable_external_ip     = false
  compute_service_account_email  = module.projet_de_specialite_service_account_subs.service_account_email
  compute_service_account_scopes = ["storage-full", "sql-admin", "cloud-platform"]
  compute_tags                   = ["projet-de-specialite-compute", "projet-de-specialite-compute-private", "projet-de-specialite-compute-private-subs"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_private,
    module.projet_de_specialite_service_account_subs
  ]
}

module "projet_de_specialite_service_account_subs" {
  source                       = "./modules/service-account"
  service_account_account_id   = "service-account-subs"
  service_account_display_name = "Service account for subs"
}

module "projet_de_specialite_db_subs" {
  source                      = "./modules/cloud-sql-database"
  cloud_sql_database_name     = "projet-de-specialite-db-subs"
  cloud_sql_database_instance = module.projet_de_specialite_instance_cloud_sql_postgres.db_instance_name
  depends_on = [
    module.projet_de_specialite_instance_cloud_sql_postgres
  ]
}

module "projet_de_specialite_db_user_subs" {
  source                  = "./modules/cloud-sql-user"
  cloud_sql_user_username = module.projet_de_specialite_service_account_subs.service_account_id
  cloud_sql_user_instance = module.projet_de_specialite_instance_cloud_sql_postgres.db_instance_name
  cloud_sql_user_type     = "CLOUD_IAM_SERVICE_ACCOUNT"
  depends_on = [
    module.projet_de_specialite_service_account_subs,
    module.projet_de_specialite_instance_cloud_sql_postgres
  ]
}

# Sohaib

module "projet_de_specialite_instance_private_mp" {
  source                         = "./modules/compute"
  compute_name                   = "projet-de-specialite-compute-private-mp"
  compute_type                   = "e2-micro"
  compute_os                     = "debian-cloud/debian-11"
  compute_ssh_key                = "\ngaetanlhf:${file("ssh_keys/gaetanlhf.pub")}\nsohaib:${file("ssh_keys/sohaib.pub")}"
  vpc_name                       = module.projet_de_specialite_vpc.vpc_name
  subnet_name                    = module.projet_de_specialite_subnet_private.subnet_name
  compute_private_ip             = "10.2.0.7"
  compute_enable_external_ip     = false
  compute_service_account_email  = module.projet_de_specialite_service_account_mp.service_account_email
  compute_service_account_scopes = ["storage-full", "sql-admin", "cloud-platform"]
  compute_tags                   = ["projet-de-specialite-compute", "projet-de-specialite-compute-private", "projet-de-specialite-compute-private-mp"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_private,
    module.projet_de_specialite_service_account_mp
  ]
}

module "projet_de_specialite_service_account_mp" {
  source                       = "./modules/service-account"
  service_account_account_id   = "service-account-mp"
  service_account_display_name = "Service account for mp"
}

module "projet_de_specialite_db_mp" {
  source                      = "./modules/cloud-sql-database"
  cloud_sql_database_name     = "projet-de-specialite-db-mp"
  cloud_sql_database_instance = module.projet_de_specialite_instance_cloud_sql_mysql.db_instance_name
  depends_on = [
    module.projet_de_specialite_instance_cloud_sql_mysql
  ]
}

module "projet_de_specialite_db_user_mp" {
  source                  = "./modules/cloud-sql-user"
  cloud_sql_user_username = module.projet_de_specialite_service_account_mp.service_account_id
  cloud_sql_user_instance = module.projet_de_specialite_instance_cloud_sql_mysql.db_instance_name
  cloud_sql_user_type     = "CLOUD_IAM_SERVICE_ACCOUNT"
  depends_on = [
    module.projet_de_specialite_service_account_mp,
    module.projet_de_specialite_instance_cloud_sql_mysql
  ]
}

# Gaëtan

module "projet_de_specialite_instance_private_feed" {
  source                     = "./modules/compute"
  compute_name               = "projet-de-specialite-compute-private-feed"
  compute_type               = "e2-micro"
  compute_os                 = "debian-cloud/debian-11"
  compute_ssh_key            = "\ngaetanlhf:${file("ssh_keys/gaetanlhf.pub")}"
  vpc_name                   = module.projet_de_specialite_vpc.vpc_name
  subnet_name                = module.projet_de_specialite_subnet_private.subnet_name
  compute_private_ip         = "10.2.0.8"
  compute_enable_external_ip = false
  compute_tags               = ["projet-de-specialite-compute", "projet-de-specialite-compute-private", "projet-de-specialite-compute-private-feed"]
  depends_on = [
    module.projet_de_specialite_vpc,
    module.projet_de_specialite_subnet_private
  ]
}

module "projet_de_specialite_dns_zone" {
  source            = "./modules/dns-zone"
  dns_zone_name     = "projet-de-specialite-dns-zone"
  dns_zone_name_url = "apowoyo.ovh."
}


module "projet_de_specialite_dns_record_compute_instance_public_app" {
  source             = "./modules/dns-record"
  dns_record_name    = "app"
  dns_record_type    = "A"
  dns_record_rrdatas = [module.projet_de_specialite_instance_public_app.compute_public_ip]
  dns_zone_name      = module.projet_de_specialite_dns_zone.dns_zone_name
  dns_zone_dns_name  = module.projet_de_specialite_dns_zone.dns_zone_name_url
  depends_on = [
    module.projet_de_specialite_instance_public_app,
    module.projet_de_specialite_dns_zone
  ]
}