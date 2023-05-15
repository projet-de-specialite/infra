resource "time_sleep" "wait_60_seconds" {
  create_duration = "60s"
}

resource "google_project_service" "cloud_firestore_service" {
  service = "firestore.googleapis.com"
  depends_on = [
    time_sleep.wait_60_seconds
  ]
}

resource "google_firestore_database" "cloud_firestore_database" {
  name                        = var.cloud_firestore_database_name
  location_id                 = var.cloud_firestore_database_location_id
  type                        = var.cloud_firestore_database_type
  concurrency_mode            = var.cloud_firestore_database_concurrency_mode
  app_engine_integration_mode = var.cloud_firestore_database_app_engine_integration_mode
  depends_on = [
    google_project_service.cloud_firestore_service
  ]
}