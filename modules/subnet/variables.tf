variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_ip_range" {
  type        = string
  description = "IP CIDR range of the subnet"
}

variable "subnet_network_name" {
  type        = string
  description = "Name of the network you would like to create a subnet"
}

variable "subnet_private_ip_google_access" {
  type        = bool
  default     = false
  description = "Enable Private IP Google access"
}