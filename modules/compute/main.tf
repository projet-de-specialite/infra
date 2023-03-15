resource "google_compute_instance" "compute" {
  machine_type = var.compute_type
  name         = var.compute_name
  tags         = var.compute_tags
  boot_disk {
    initialize_params {
      image = var.compute_os
    }
  }
  metadata = {
    ssh-keys = var.compute_ssh_key
  }
  network_interface {
    network    = var.vpc_name
    subnetwork = var.subnet_name
    network_ip = var.compute_private_ip
    dynamic "access_config" {
      for_each = var.compute_enable_external_ip == false ? [] : [1]
      content {
      }
    }
  }
  dynamic "service_account" {
    for_each = var.compute_service_account_email == null ? [] : [1]
    content {
      email  = var.compute_service_account_email
      scopes = var.compute_service_account_scopes
    }
  }
}