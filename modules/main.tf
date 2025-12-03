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

# Add .gitignore from template file
resource "github_repository_file" "gitignore" {
  repository          = github_repository.this.name
  branch              = "main"
  file                = ".gitignore"
  content             =  var.gitignore_content
  commit_message      = "chore: add .gitignore from template"
  overwrite_on_create = true
}

# Add readme prompt for AI generation
resource "github_repository_file" "readme_prompt" {
  repository          = github_repository.this.name
  branch              = "main"
  file                = ".github/prompts/readme.md"
  content             = <<PROMPT
Create a comprehensive README for this {{technologies}} project.

The repository "{{repo_name}}" appears to be: {{purpose}}

Include:
- Project title and description
- Installation instructions
- Usage examples with code snippets
- Configuration options
- API documentation if applicable
- Testing instructions
- Deployment guide
- Contributing guidelines
- License information

Use professional Markdown formatting with clear sections.
PROMPT
  commit_message      = "chore: add README AI prompt"
  overwrite_on_create = true
}