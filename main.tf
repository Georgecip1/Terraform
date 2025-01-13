provider "google" {
  project     = "durable-height-447621-h7"
  credentials = file(var.GOOGLE_APPLICATION_CREDENTIALS)
  region      = "us-central1"
  zone        = "us-central1-a"
}

resource "google_compute_instance" "my_instance" {
  name                      = "terraform-instance"
  machine_type              = "f1-micro"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
