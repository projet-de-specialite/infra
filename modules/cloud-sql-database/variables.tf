variable "cloud_sql_database_name" {
  type        = string
  description = "Name of the database"
}

variable "cloud_sql_database_instance" {
  type        = string
  description = "Cloud SQL instance where the database must be created"
}

variable "cloud_sql_database_charset" {
  type        = string
  default     = "utf8"
  description = "(optional) charset of the database"
}

variable "cloud_sql_database_collation" {
  type        = string
  default     = "utf8_general_ci"
  description = "(optional) collation of the database"
}