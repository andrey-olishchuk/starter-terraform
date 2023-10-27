resource "google_cloud_run_v2_service" "default" {
  name     = "ep-customer-${var.name}"
  location = "europe-west4"
  ingress = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "europe-west3-docker.pkg.dev/dorpm-381708/entrypoint/basic-blueprint:v0.0.4"
      env {
        name = "CLIENT"
        value = var.name
      }
    }
  }
}

resource "google_cloud_run_service_iam_binding" "default" {
  location = google_cloud_run_v2_service.default.location
  service  = google_cloud_run_v2_service.default.name
  role     = "roles/run.invoker"
  members = [
    "allUsers"
  ]
}