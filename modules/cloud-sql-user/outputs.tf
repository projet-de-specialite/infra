output "db_user_name" {
  value       = google_sql_user.cloud_sql_user.name
  description = "Name of the Cloud SQL user"
}