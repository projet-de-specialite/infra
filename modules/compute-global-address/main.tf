resource "google_compute_global_address" "compute_global_address" {
  name          = var.compute_global_address_name
  purpose       = var.compute_global_address_purpose
  address_type  = var.compute_global_address_address_type
  prefix_length = var.compute_global_address_prefix_length
  address       = var.compute_global_address_address
  network       = var.compute_global_address_network
}