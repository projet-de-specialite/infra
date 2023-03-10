output "db_name" {
  value       = google_sql_database.cloud_sql_database.name
  description = "Cloud SQL Database name"
}