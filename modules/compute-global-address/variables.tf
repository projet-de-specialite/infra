variable "compute_global_address_name" {
  type        = string
  description = "Name of the Compute Global Address"
}

variable "compute_global_address_purpose" {
  type        = string
  description = "Purpose (please see docs)"
}

variable "compute_global_address_address_type" {
  type        = string
  description = "Address type (EXTERNAL/INTERNAL)"
}

variable "compute_global_address_prefix_length" {
  type        = number
  description = "Address prefix length"
}

variable "compute_global_address_address" {
  type        = string
  description = "Address"
}


variable "compute_global_address_network" {
  type        = string
  description = "VPC for the Compute Global Address"
}