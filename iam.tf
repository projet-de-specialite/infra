data "google_iam_policy" "projet_de_specialite_iam_bucket" {
  binding {
    role = "roles/storage.admin"
    members = [
      "serviceAccount:${module.projet_de_specialite_service_account_posts.service_account_email}",
      "serviceAccount:${module.projet_de_specialite_service_account_profile.service_account_email}",
    "user:gaetan.le.heurt.finot@etud.u-picardie.fr"]
  }
}

data "google_iam_policy" "projet_de_specialite_iam_cloud_sql" {
  for_each = toset([
    "roles/cloudsql.instanceUser",
    "roles/cloudsql.client",
    "roles/iam.serviceAccountTokenCreator",
  ])
  binding {
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
}

