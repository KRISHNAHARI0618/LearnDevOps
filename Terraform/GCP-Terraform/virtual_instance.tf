terraform {
  required_providers {
    google ={
        version = "6.39.0"
        source = "hashicorp/google"
    }
  }
}

provider "google" {
    project = "terraform"
    region = "us-central1"
    credentials = "terraform-gcp-credentials.json"
    zone = "us-central1-a"
}

resource "google_compute_instance" "name1" {

    machine_type = "n2d-standard-2"
    name = "instance1"

    boot_disk {
        initialize_params {
            image = "ubuntu-os-cloud/ubuntu-2004-lts"
        }
    }
    network_interface {
      network = "default"
      access_config {
        // ephemeral public ip
      }
    }
    
    service_account {
      scopes = ["cloud-platform"]
      email = ""
    }
  
}

module "google" {

  source = "value"
  version = "value"
  
}