resource "google_sql_database_instance" "cloud_sql_instance" {
  name             = var.cloud_sql_instance_name
  database_version = var.cloud_sql_instance_version
  settings {
    tier = var.cloud_sql_instance_tier
  }
}