
resource "google_dns_record_set" "dns_record" {
  name         = "${var.dns_record_name}.${var.dns_zone_dns_name}"
  type         = var.dns_record_type
  ttl          = var.dns_record_ttl
  managed_zone = var.dns_zone_name
  rrdatas      = var.dns_record_rrdatas
}