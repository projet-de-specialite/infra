output "router_name" {
  value       = google_compute_router.router.name
  description = "Name of the router"
}

output "router_region" {
  value       = google_compute_router.router.region
  description = "Region of the router"
}