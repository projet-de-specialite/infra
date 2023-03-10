resource "google_sql_user" "cloud_sql_user" {
  name     = var.cloud_sql_user_username
  instance = var.cloud_sql_user_instance
  password = var.cloud_sql_user_userpassword
}
