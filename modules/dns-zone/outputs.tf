output "dns_zone_name" {
  value       = google_dns_managed_zone.dns_zone.name
  description = "DNS zone name"
}

output "dns_zone_name_url" {
  value       = google_dns_managed_zone.dns_zone.dns_name
  description = "DNS zone URL"
}