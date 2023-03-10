variable "cloud_sql_instance_name" {
  type        = string
  description = "Cloud SQL instance name"
}

variable "cloud_sql_instance_version" {
  type        = string
  description = "The MySQL, PostgreSQL or SQL Server version to use"
}

variable "cloud_sql_instance_tier" {
  type        = string
  description = "Cloud SQL VM"
}