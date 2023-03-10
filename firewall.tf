resource "google_compute_firewall" "projet-de-specialite-firewall-public-allow-ssh" {
  name     = "projet-de-specialite-firewall-public-allow-ssh"
  network  = module.cloud_sql_instance_vpc.vpc_name
  priority = 500

  allow {
    protocol = "all"
    ports    = []
  }

  target_tags   = ["projet-de-specialite-streaming-compute-public"]
  source_ranges = ["51.178.17.132"]
}

resource "google_compute_firewall" "projet-de-specialite-firewall-private-interconnect" {
  name     = "projet-de-specialite-firewall-private-interconnect"
  network  = module.cloud_sql_instance_vpc.vpc_name
  priority = 500

  allow {
    protocol = "all"
    ports    = []
  }

  source_tags = ["projet-de-specialite-streaming-compute-private"]
  target_tags = ["projet-de-specialite-streaming-compute-private"]
}

resource "google_compute_firewall" "projet-de-specialite-firewall-public-private-interconnect" {
  name     = "projet-de-specialite-firewall-public-private-interconnect"
  network  = module.cloud_sql_instance_vpc.vpc_name
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
  network  = module.cloud_sql_instance_vpc.vpc_name
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
  network  = module.cloud_sql_instance_vpc.vpc_name
  priority = 1000


  deny {
    protocol = "all"
    ports    = []
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["projet-de-specialite-compute"]

}