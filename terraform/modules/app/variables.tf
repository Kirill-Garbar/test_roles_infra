variable "zone" {
  default     = "europe-west1-b"
  description = "zone for VM"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image for reddit app"
  default     = "ubuntu-1604-lts"
}

variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}

variable "app_count" {
  description = "app_count"
  default = "1"
}
