output "db_instance_name" {
  value       = google_sql_database_instance.db_instance.name
  description = "Name of the Cloud SQL instance"
}