resource "google_compute_firewall" "firewall_ssh" {
  name    = "default-allow-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = "${var.source_ranges}"
}

resource "google_compute_firewall" "firewall_nginx" {
  name    = "allow-nginx-default"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  # source_tags = ["reddit-balancer"]
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app", "reddit-balancer"]
}

resource "google_compute_firewall" "firewall_app" {
  name    = "allow-app-default"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app", "reddit-balancer"]
}
