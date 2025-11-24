output "name" {
  description = "Repository name"
  value       = github_repository.this.name
}

output "html_url" {
  description = "Repository HTML URL"
  value       = github_repository.this.html_url
}

output "ssh_clone_url" {
  description = "SSH clone URL"
  value       = github_repository.this.ssh_clone_url
}

output "http_clone_url" {
  description = "HTTP clone URL"
  value       = github_repository.this.http_clone_url
}

output "repo_id" {
  description = "Repository ID"
  value       = github_repository.this.repo_id
}

output "node_id" {
  description = "Repository node ID"
  value       = github_repository.this.node_id
}