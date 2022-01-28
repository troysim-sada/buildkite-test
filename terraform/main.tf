resource "google_compute_network" "vpc" {
  name                    = local.vpc_name
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
}

resource "google_compute_firewall" "allow-http" {
  depends_on = [google_compute_network.vpc]      
  name    = "${local.vpc_name}-firewall-allow-http"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags = ["http"]

}

resource "google_compute_subnetwork" "network_subnet" {
  depends_on = [google_compute_network.vpc]      
  name          = local.vpc_name
  ip_cidr_range = local.network_subnet
  network       = google_compute_network.vpc.name
  region        = local.gcp_region
}

output "gcp_vpc_network_name" {
  value = google_compute_network.vpc.id
}
