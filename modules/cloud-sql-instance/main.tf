resource "google_sql_database_instance" "cloud_sql_instance" {
  name             = var.cloud_sql_instance_name
  database_version = var.cloud_sql_instance_version
  settings {
    tier = var.cloud_sql_instance_tier
    dynamic "ip_configuration" {
      for_each = var.cloud_sql_instance_enable_private == false ? [] : [1]
      content {
        ipv4_enabled                                  = false
        private_network                               = var.cloud_sql_instance_vpc
        enable_private_path_for_google_cloud_services = true
      }
    }
  }
}