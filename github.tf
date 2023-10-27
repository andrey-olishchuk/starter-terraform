resource "github_repository" "client" {
  name        = var.name
  description = "${var.name} application repo"

  visibility = "private"

  template {
    owner                = "entrypoint-me"
    repository           = "basic-blueprint"
    include_all_branches = true
  }
}

resource "github_repository_collaborator" "collaborators" {
  count = length(var.collaborators)
  depends_on = [ github_repository.client ]
  repository = github_repository.client.name
  permission = "push"
  username   = var.collaborators[count.index]
}