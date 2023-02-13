resource "google_compute_router" "router" {
  name    = var.router_name
  region  = var.subnet_region
  network = var.vpc_id

  bgp {
    asn = 64514
  }
}