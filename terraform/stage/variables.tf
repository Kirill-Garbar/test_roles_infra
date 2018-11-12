variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable "zone" {
  default     = "europe-west1-b"
  description = "zone for VM"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}

variable "app_count" {
  description = "instances quantity for LB"
  default     = "3"
}

variable "balancer_count" {
  description = "instances quantity for LB"
  default     = "2"
}

variable disk_image {
  description = "Disk image for reddit app"
  default     = "ubuntu-1604-lts"
}
