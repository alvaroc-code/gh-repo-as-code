# Include root configuration with providers and backend
include {
  path = find_in_parent_folders()
}

# Point to our module
terraform {
  source = "../../modules"
}

# All input values for this specific repository
inputs = {
  # Required
  name        = "iac-repo-101"
  description = "A sample repository created with Terraform and Terragrunt"
  
  # Visibility and initialization
  visibility  = "private"
  auto_init   = true
  
  # Repository features
  has_issues             = true
  has_wiki               = false
  has_projects           = false
  
  # Merge options
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true
  
  # Security
  vulnerability_alerts = true
  
  # Gitignore template (Terraform template excludes .tfstate, .terraform, etc.)
  gitignore_template = "Terraform"
  
  # Optional: Add topics/labels
  # topics = ["terraform", "terragrunt", "testing", "iac"]
}
