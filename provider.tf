terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.43.1"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraformforgcp"
  region = "usa-central1"
  zone = "us-central1-a"
  credentials = "keys.json"
}