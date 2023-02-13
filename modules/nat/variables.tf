variable "nat_name" {
  type        = string
  description = "Name of the NAT"
}

variable "router_name" {
  type        = string
  description = "Name of the router"
}

variable "router_region" {
  type        = string
  description = "Region of the router"
}

variable "nat_ip_allocate_option" {
  type        = string
  description = "How external IPs should be allocated for this NAT"
}

variable "source_subnetwork_ip_ranges_to_nat" {
  type        = string
  description = "How NAT should be configured per subnetwork"
}

variable "subnetwork_to_nat" {
  type        = string
  description = "Self-link of subnetwork to NAT"
}

variable "source_ip_ranges_to_nat" {
  type        = list(string)
  description = "List of the secondary ranges of the subnetwork that are allowed to use NAT"
}