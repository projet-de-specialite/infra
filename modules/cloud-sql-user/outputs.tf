output "db_user_name" {
  value       = google_sql_user.db_user.name
  description = "Name of the databse user"
}