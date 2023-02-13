resource "google_compute_router_nat" "nat" {
  name                               = var.nat_name
  router                             = var.router_name
  region                             = var.router_region
  nat_ip_allocate_option             = var.nat_ip_allocate_option
  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
  dynamic "subnetwork" {
    for_each = var.source_subnetwork_ip_ranges_to_nat == "LIST_OF_SUBNETWORKS" ? [1] : []
    content {
      name                    = var.subnetwork_to_nat
      source_ip_ranges_to_nat = var.source_ip_ranges_to_nat
    }
  }
}