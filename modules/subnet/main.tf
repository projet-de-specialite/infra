resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_ip_range
  network       = var.subnet_network_name
  private_ip_google_access = var.subnet_private_ip_google_access
}