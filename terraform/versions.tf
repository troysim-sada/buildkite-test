terraform {
  required_version = "~> 1.0.0"
}

provider "google" {
  #credentials = local.gcp_auth_file
  project = local.gcp_project
  region  = local.gcp_region
}

