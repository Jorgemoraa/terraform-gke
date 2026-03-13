output "gcp-cluster-name" {
  value = google_container_cluster.primary.name
}

output "kubernetes_endpoint" {
  value = google_container_cluster.primary.endpoint
}
output "gcp-bucket-url" {
  value = "gs://${google_storage_bucket.td_bucket.name}"
}
