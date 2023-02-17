variable "bucket_name" {
  type        = string
  description = "Name of the bucket"
}

variable "bucket_location" {
  type        = string
  description = "Location of the bucket"
}

variable "bucket_force_destroy" {
  type        = string
  description = "Delete all contained objects when deleting a bucket"
}

variable "bucket_storage_class" {
  type        = string
  description = "Bucket storage class"
}

variable "bucket_uniform_bucket_level_access" {
  type        = string
  description = "Enables Uniform bucket-level access access to a bucket"
}

variable "bucket_public_access_prevention" {
  type        = string
  description = "Prevents public access to a bucket"
}