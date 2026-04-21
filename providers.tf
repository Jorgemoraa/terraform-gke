terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.5.0"
    }
  }
}

provider "google" {
  credentials = file("../aesthetic-vent-494006-g0-f7aace8b0f31.json")

  project = var.gcp-project
  region  = var.gcp-region
  zone    = var.gcp-zone
}
