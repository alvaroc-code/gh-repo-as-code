variable "name" {
  description = "Name of the repository"
  type        = string
}

variable "description" {
  description = "Repository description"
  type        = string
  default     = ""
}

variable "visibility" {
  description = "Repository visibility (public or private)"
  type        = string
  default     = "public"
}

variable "auto_init" {
  description = "Create initial commit with README"
  type        = bool
  default     = true
}

variable "has_issues" {
  description = "Enable issues for the repository"
  type        = bool
  default     = true
}

variable "has_wiki" {
  description = "Enable wiki for the repository"
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "Enable projects for the repository"
  type        = bool
  default     = false
}

variable "allow_merge_commit" {
  description = "Allow merge commits"
  type        = bool
  default     = true
}

variable "allow_squash_merge" {
  description = "Allow squash merges"
  type        = bool
  default     = true
}

variable "allow_rebase_merge" {
  description = "Allow rebase merges"
  type        = bool
  default     = true
}

variable "delete_branch_on_merge" {
  description = "Automatically delete head branches after merge"
  type        = bool
  default     = true
}

variable "vulnerability_alerts" {
  description = "Enable vulnerability alerts"
  type        = bool
  default     = true
}

variable "gitignore_content" {
  description = "Content for the .gitignore file"
  type        = string
  default     = <<EOT
# Terraform
**/.terraform/*
*.tfstate
*.tfstate.*

# Local .terraform directories
**/.terraform/*

# .tfstate files
*.tfstate
*.tfstate.*

# Crash log files
crash.log
crash.*.log

# Exclude .env files
*.env
.env

# Editor directories and files
.idea
.vscode/
*.swp
*.swo

# OS files
.DS_Store
Thumbs.db

# Language-specific (optional)
node_modules/
__pycache__/
*.pyc
EOT
}