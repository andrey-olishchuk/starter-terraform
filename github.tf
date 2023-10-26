resource "github_repository" "client" {
  name        = var.name
  description = "Client app name"

  visibility = "private"

  template {
    owner                = "entrypoint-me"
    repository           = "basic-blueprint"
    include_all_branches = true
  }
}