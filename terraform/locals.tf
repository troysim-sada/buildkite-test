locals {
  vpc_name       = "buildkite-test"
  gcp_project    = "sada-troy-sim"
  gcp_region     = "us-central1"
  network_subnet  = "192.16.8.1.1/24"
  #gcp_auth_file = "" // uncomment this if you have the auth file
}
