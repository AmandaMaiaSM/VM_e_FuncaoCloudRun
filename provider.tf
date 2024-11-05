terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "6.8.0"
    }
  }
}
provider "google" {
  project = "noble-anvil-439219-a9"
  zone = "northamerica-northeast1-b"
}
