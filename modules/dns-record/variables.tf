variable "dns_record_type" {
  type        = string
  description = "DNS field"
}

variable "dns_record_rrdatas" {
  type        = list(string)
  description = "DNS rrdatas"
}

variable "dns_record_name" {
  type        = string
  description = "DNS record name"
}

variable "dns_record_ttl" {
  type        = number
  default     = 300
  nullable    = false
  description = "DNS record TTL"
}

variable "dns_zone_name" {
  type        = string
  description = "Managed DNS zone name"
}

variable "dns_zone_dns_name" {
  type        = string
  description = "Managed DNS zone DNS name"

}