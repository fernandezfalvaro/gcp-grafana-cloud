resource "google_compute_instance" "vm_instance" {
  name         = "grafana-cloud"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}
