resource "google_container_cluster" "private_gke" {
  name     = var.cluster_name
  location = "us-east1-b"     # ZONAL CLUSTER - FIXES SSD QUOTA ISSUE

  network    = google_compute_network.vpc.self_link
  subnetwork = google_compute_subnetwork.private_subnet.name

  remove_default_node_pool = true
  initial_node_count       = 1

  ip_allocation_policy {}

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = "172.16.0.0/28"
  }

  release_channel {
    channel = "REGULAR"
  }

  logging_service    = "logging.googleapis.com/kubernetes"
  monitoring_service = "monitoring.googleapis.com/kubernetes"
}
