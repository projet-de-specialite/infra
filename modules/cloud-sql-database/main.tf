resource "google_sql_database" "cloud_sql_database" {
  name      = var.cloud_sql_database_name
  instance  = var.cloud_sql_database_instance
  charset   = var.cloud_sql_database_charset
  collation = var.cloud_sql_database_collation
}