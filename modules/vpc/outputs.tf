output "vpc_name" {
  value       = google_compute_network.vpc.name
  description = "Name of the VPC"
}

output "vpc_id" {
  value       = google_compute_network.vpc.id
  description = "ID of the VPC"
}