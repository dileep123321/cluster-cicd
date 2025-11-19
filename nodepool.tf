resource "google_container_node_pool" "cheap_pool" {
  name     = "kxnwork-cheap-nodepool"
  cluster  = google_container_cluster.private_gke.name
  location = "us-east1-b"   # MUST MATCH CLUSTER ZONE

  node_count = 1

  node_config {
    machine_type = "e2-small"
    disk_size_gb = 20

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
}
