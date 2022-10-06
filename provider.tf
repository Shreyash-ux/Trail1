provider "google" {
    project = "exterminate-364706"
    region = "us-central1"
    zone = "us-central1-b"
}
resource "google_compute_instance" "vm" {
  name         = "test"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  // Local SSD disk
  

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}