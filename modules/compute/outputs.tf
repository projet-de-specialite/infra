output "compute_name" {
  value       = google_compute_compute.compute.name
  description = "Name of the compute"
}

output "compute_id" {
  value       = google_compute_compute.compute.id
  description = "ID of the compute"
}

output "compute_public_ip" {
  value       = var.compute_enable_external_ip ? google_compute_compute.compute.network_interface[0].access_config[0].nat_ip : null
  description = "Public IP of the compute"
}

output "compute_internal_ip" {
  value       = google_compute_compute.compute.network_interface.0.network_ip
  description = "Internal IP of the compute"
}