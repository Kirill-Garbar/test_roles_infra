provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region  = "${var.region}"
}

module "app" {
  source          = "../modules/app"
  public_key_path = "${var.public_key_path}"
  private_key_path = "${var.private_key_path}"
  zone            = "${var.zone}"
  disk_image  = "${var.disk_image}"
  app_count = "${var.app_count}"
}

module "balancer" {
  source          = "../modules/balancer"
  public_key_path = "${var.public_key_path}"
  private_key_path = "${var.private_key_path}"
  zone            = "${var.zone}"
  disk_image   = "${var.disk_image}"
  balancer_count = "${var.balancer_count}"
}

module "vpc" {
  source        = "../modules/vpc"
  source_ranges = ["0.0.0.0/0"]
}
