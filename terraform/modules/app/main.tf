resource "google_compute_instance" "app" {
  name         = "reddit-app-${count.index}"
  machine_type = "f1-micro"
  zone         = "${var.zone}"
  tags         = ["reddit-app"]
  count        = "${var.app_count}"

  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  network_interface {
    network = "default"

    access_config = {}
  }

  metadata {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }

}
