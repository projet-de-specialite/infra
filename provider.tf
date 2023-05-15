terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.64.0"
    }
  }
}

provider "google" {
  project = "projet-de-specialite-master1"
  region  = "europe-west9"
  zone    = "europe-west9-a"
}