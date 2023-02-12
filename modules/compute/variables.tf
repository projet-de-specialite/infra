variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
}

variable "compute_private_ip" {
  type        = string
  description = "Instance private IP"
}

variable "compute_name" {
  type        = string
  description = "Name of your VM"
}

variable "compute_type" {
  type        = string
  description = "Type of your VM"
}

variable "compute_enable_external_ip" {
  type        = bool
  description = "Enable or disable external IP"
}

variable "compute_os" {
  type        = string
  description = "Instance's OS"
}

variable "compute_tags" {
  type        = list(string)
  description = "Tags of the instance"
}

variable "compute_ssh_key" {
  type        = string
  description = "SSH key"
}

variable "compute_service_account_email" {
  type        = string
  default     = ""
  nullable    = true
  description = "Email of the service account"
}

variable "compute_service_account_scopes" {
  type        = list(string)
  default     = ["cloud-platform"]
  nullable    = true
  description = "Scopes of the service account"
}