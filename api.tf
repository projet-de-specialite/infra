variable "gcp_service_list" {
  description = "The list of APIs necessary for the project"
  type        = list(string)
  default = [
    "compute.googleapis.com",
    "sql-component.googleapis.com",
    "sqladmin.googleapis.com",
    "storage-component.googleapis.com",
    "firestore.googleapis.com",
    "datastore.googleapis.com",
    "monitoring.googleapis.com",
    "servicenetworking.googleapis.com",
    "dns.googleapis.com",
    "cloudbilling.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com"
  ]
}

resource "google_project_service" "projet_de_specialite_services" {
  for_each = toset(var.gcp_service_list)
  project  = google_project.project.project_id
  service  = each.key
}
