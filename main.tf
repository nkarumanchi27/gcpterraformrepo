resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "statefile_bucket" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

resource "google_container_cluster" "primary" {
  name     = "gke-production-cluster"
  location = "us-east1"
  ip_allocation_policy {
  }
  enable_autopilot = true
}
