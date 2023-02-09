terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.52.0"
    }
  }
}

provider "google" {
  project = "projet-de-specialite-377322"
  region  = "europe-west9"
  zone    = "europe-west9-a"
}