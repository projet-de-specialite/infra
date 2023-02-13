output "nat_name" {
  value       = google_compute_router_nat.nat.name
  description = "Name of the NAT"
}

output "nat_id" {
  value       = google_compute_router_nat.nat.id
  description = "ID of the NAT"
}