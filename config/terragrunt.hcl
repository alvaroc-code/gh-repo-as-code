# Root Terragrunt configuration
locals {
  github_user  = get_env("GITHUB_USER")
  github_token = get_env("GITHUB_TOKEN")
  tfc_org      = get_env("TF_ORG") # Your Terraform Cloud Org name on https://app.terraform.io/
}

generate "backend" {
  path          = "backend.tf"
  if_exists     = "overwrite_terragrunt"
  contents      = <<EOF
terraform {
  cloud {
    organization = "${local.tfc_org}"
    workspaces {
      name = "terraform-states"
    }
  }
}
EOF
}

generate "providers" {
  path      = "providers.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = "${local.github_user}"
  token = "${local.github_token}"
}
EOF
}
