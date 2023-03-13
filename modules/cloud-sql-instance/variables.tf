variable "cloud_sql_instance_name" {
  type        = string
  description = "Cloud SQL instance name"
}

variable "cloud_sql_instance_version" {
  type        = string
  description = "The MySQL, PostgreSQL or SQL Server version to use"
}

variable "cloud_sql_instance_deletion_protection" {
  type        = string
  description = "Deletion protection"
}

variable "cloud_sql_instance_tier" {
  type        = string
  description = "Cloud SQL VM"
}

variable "cloud_sql_instance_enable_private" {
  type        = bool
  description = "Enable or disable private IP instance"
}

variable "cloud_sql_instance_vpc" {
  type        = string
  default     = ""
  nullable    = true
  description = "Private VPC name"
}

variable "cloud_sql_instance_enable_iam_authentication" {
  type        = bool
  description = "Enable or disable Cloud IAM authentication"
}