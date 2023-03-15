resource "google_compute_firewall" "projet-de-specialite-firewall-public-allow-ssh" {
  name     = "projet-de-specialite-firewall-public-allow-ssh"
  network  = module.projet_de_specialite_vpc.vpc_name
  priority = 500

  allow {
    protocol = "all"
    ports    = []
  }

  target_tags   = ["projet-de-specialite-compute-public"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "projet-de-specialite-cloud-sql" {
  name     = "projet-de-specialite-firewall-cloud-sql"
  network  = module.projet_de_specialite_vpc.vpc_name
  priority = 500

  allow {
    protocol = "all"
    ports    = []
  }

  source_ranges      = ["10.3.0.0/16"]
  destination_ranges = ["10.2.0.0/16"]
}

resource "google_compute_firewall" "projet-de-specialite-firewall-private-interconnect" {
  name     = "projet-de-specialite-firewall-private-interconnect"
  network  = module.projet_de_specialite_vpc.vpc_name
  priority = 500

  allow {
    protocol = "all"
    ports    = []
  }

  source_tags = ["projet-de-specialite-compute-private"]
  target_tags = ["projet-de-specialite-compute-private"]
}

resource "google_compute_firewall" "projet-de-specialite-firewall-public-private-interconnect" {
  name     = "projet-de-specialite-firewall-public-private-interconnect"
  network  = module.projet_de_specialite_vpc.vpc_name
  priority = 500

  allow {
    protocol = "all"
    ports    = []
  }

  source_tags = ["projet-de-specialite-compute-public-app", "projet-de-specialite-compute-private"]
  target_tags = ["projet-de-specialite-compute-private", "projet-de-specialite-compute-public-app"]

}

resource "google_compute_firewall" "projet-de-specialite-firewall-public-app-allow-http" {
  name     = "projet-de-specialite-firewall-public-app-allow-http"
  network  = module.projet_de_specialite_vpc.vpc_name
  priority = 500

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["projet-de-specialite-compute-public-app"]

}

resource "google_compute_firewall" "projet-de-specialite-firewall-deny-all" {
  name     = "projet-de-specialite-firewall-deny-all"
  network  = module.projet_de_specialite_vpc.vpc_name
  priority = 1000


  deny {
    protocol = "all"
    ports    = []
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["projet-de-specialite-compute"]

}