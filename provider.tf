terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.65.2"
    }
  }
}

provider "google" {
  project = "projet-de-specialite-${random_id.random_id_project.hex}"
  region  = "europe-west9"
  zone    = "europe-west9-a"
}