resource "google_sql_user" "db_user" {
  name     = var.db_username
  instance = var.db_instance
  password = var.db_userpassword
}
