data "google_iam_policy" "projet_de_specialite_posts_bucket_iam" {
  binding {
    role = "roles/storage.admin"
    members = [
      "serviceAccount:${module.projet_de_specialite_service_account_posts.service_account_email}",
    "user:gaetan.le.heurt.finot@etud.u-picardie.fr"]
  }
}

data "google_iam_policy" "projet_de_specialite_profile_bucket_iam" {
  binding {
    role = "roles/storage.admin"
    members = [
      "serviceAccount:${module.projet_de_specialite_service_account_profile.service_account_email}",
    "user:gaetan.le.heurt.finot@etud.u-picardie.fr"]
  }
}

resource "google_project_iam_binding" "projet_de_specialite_iam_cloud_sql" {
  project = google_project.project.project_id
  for_each = toset([
    "roles/cloudsql.instanceUser",
    "roles/cloudsql.client",
    "roles/iam.serviceAccountTokenCreator"
  ])
  role = each.key
  members = [
    "serviceAccount:${module.projet_de_specialite_service_account_auth.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_posts.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_profile.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_comments.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_subs.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_mp.service_account_email}",
  "user:gaetan.le.heurt.finot@etud.u-picardie.fr"]

}

resource "google_project_iam_binding" "projet_de_specialite_cloud_ops_agent" {
  project = google_project.project.project_id
  for_each = toset([
    "roles/monitoring.metricWriter",
    "roles/logging.logWriter"
  ])
  role = each.key
  members = [
    "serviceAccount:${module.projet_de_specialite_service_account_auth.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_posts.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_profile.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_comments.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_subs.service_account_email}",
    "serviceAccount:${module.projet_de_specialite_service_account_mp.service_account_email}",
  "user:gaetan.le.heurt.finot@etud.u-picardie.fr"]

}

resource "google_storage_bucket_iam_policy" "projet_de_specialite_posts_bucket_iam_policy" {
  bucket      = module.projet_de_specialite_bucket_posts.bucket_name
  policy_data = data.google_iam_policy.projet_de_specialite_posts_bucket_iam.policy_data
  depends_on = [
    module.projet_de_specialite_bucket_posts,
    data.google_iam_policy.projet_de_specialite_posts_bucket_iam
  ]
}

resource "google_storage_bucket_iam_policy" "projet_de_specialite_profile_bucket_iam_policy" {
  bucket      = module.projet_de_specialite_bucket_profile.bucket_name
  policy_data = data.google_iam_policy.projet_de_specialite_profile_bucket_iam.policy_data
  depends_on = [
    module.projet_de_specialite_bucket_posts,
    data.google_iam_policy.projet_de_specialite_profile_bucket_iam
  ]
}
