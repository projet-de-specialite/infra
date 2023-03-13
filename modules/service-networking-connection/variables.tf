variable "service_networking_connection_network" {
  type        = string
  description = "Network for Service Networking Connection"
}

variable "service_networking_connection_service" {
  type        = string
  default     = "servicenetworking.googleapis.com"
  description = "Service for Service Networking Connection"
}

variable "service_networking_connection_reserved_peering_ranges" {
  type        = list(string)
  description = "Peering ranges"
}