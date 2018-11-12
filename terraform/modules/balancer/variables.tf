variable "zone" {
  default     = "europe-west1-b"
  description = "zone for VM"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
  default     = "ubuntu-1604-lts"
}
variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}

variable "balancer_count" {
  description = "balancer_count"
  default = "1"
}
