terraform {
  required_version = "~> 1.1.4"
}

provider "google" {
  #credentials = local.gcp_auth_file
  project = local.gcp_project
  region  = local.gcp_region
}
