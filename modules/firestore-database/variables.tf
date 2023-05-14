variable "cloud_firestore_database_name" {
  type        = string
  description = "Name of the database"
}

variable "cloud_firestore_database_location_id" {
  type        = string
  description = "Location ID of the database"
}

variable "cloud_firestore_database_type" {
  type        = string
  description = "Type of the database"
}

variable "cloud_firestore_database_concurrency_mode" {
  type        = string
  description = "The concurrency control mode to use for this database"
}

variable "cloud_firestore_database_app_engine_integration_mode" {
  type        = string
  description = "The App Engine integration mode to use for this database"
}