output "repository" {
    value = github_repository.client.git_clone_url
}

output "collaborators" {
    value  = github_repository_collaborator.collaborators[*].username
}

output "service_url" {
    value = google_cloud_run_v2_service.default.uri
}