output "bucket_name" {
  value       = google_storage_bucket.bucket.name
  description = "Name of the bucket"
}

output "bucket_id" {
  value       = google_storage_bucket.bucket.id
  description = "ID of the bucket"
}