resource "random_id" "random_id_project" {
  byte_length = 4
}

resource "google_project" "project" {
  project_id          = "projet-de-specialite-${random_id.random_id_project.hex}"
  name                = "projet-de-specialite"
  auto_create_network = false
  billing_account     = "010CC9-6CBBB5-C42FC0"
}