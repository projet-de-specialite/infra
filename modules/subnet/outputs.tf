output "subnet_self_link" {
  value       = google_compute_subnetwork.subnet.self_link
  description = "ID of the subnet"
}

output "subnet_name" {
  value       = google_compute_subnetwork.subnet.name
  description = "Name of the subnet"
}

output "subnet_region" {
  value       = google_compute_subnetwork.subnet.region
  description = "Region of the subnet"
}