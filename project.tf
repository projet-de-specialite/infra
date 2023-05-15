resource "google_project" "project" {
  project_id          = "projet-de-specialite-master1"
  name                = "projet-de-specialite"
  auto_create_network = false
  billing_account     = "010CC9-6CBBB5-C42FC0"
}