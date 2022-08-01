terraform {
  required_version = ">= 1.1"

  backend "gcs" {
    bucket = "tf-ga-state"
    prefix = "terraform-gcp-grafana-cloud"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.12.0"
    }
  }
}

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
  zone    = var.gcp_zone
}
