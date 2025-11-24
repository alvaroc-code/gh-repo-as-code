# Basic module for Github repository

resource "github_repository" "this" {
  name                   = var.name
  description            = var.description
  visibility             = var.visibility
  auto_init              = var.auto_init
  
  has_issues             = var.has_issues
  has_wiki               = var.has_wiki
  has_projects           = var.has_projects
  
  allow_merge_commit     = var.allow_merge_commit
  allow_squash_merge     = var.allow_squash_merge
  allow_rebase_merge     = var.allow_rebase_merge
  delete_branch_on_merge = var.delete_branch_on_merge
  
  vulnerability_alerts   = var.vulnerability_alerts
}