resource "google_service_networking_connection" "service_networking_connection" {
  network                 = var.service_networking_connection_network
  service                 = var.service_networking_connection_service
  reserved_peering_ranges = var.service_networking_connection_reserved_peering_ranges
}