output "cluster_name" {
  value = google_container_cluster.private_gke.name
}

output "endpoint" {
  value = google_container_cluster.private_gke.endpoint
}

output "vpc" {
  value = google_compute_network.vpc.name
}
