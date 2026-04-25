variable "zone" {
  description = "Yandex Cloud availability zone."
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the VM network interface is created."
  type        = string
}

variable "vm_name" {
  description = "Virtual machine name."
  type        = string
}

variable "hostname" {
  description = "Virtual machine hostname."
  type        = string
}

variable "cores" {
  description = "Number of vCPU cores."
  type        = number
}

variable "memory" {
  description = "Amount of RAM in GB."
  type        = number
}

variable "disk_size" {
  description = "Boot disk size in GB."
  type        = number
}

variable "disk_type" {
  description = "Yandex Cloud disk type."
  type        = string
  default     = "network-hdd"
}

variable "image_family" {
  description = "Image family for the boot disk."
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "platform_id" {
  description = "Yandex Compute platform ID."
  type        = string
  default     = "standard-v3"
}

variable "enable_nat" {
  description = "Whether to assign a public IP through NAT."
  type        = bool
  default     = true
}

variable "ssh_user" {
  description = "Linux username for SSH access."
  type        = string
  default     = "ubuntu"
}

variable "ssh_public_key" {
  description = "Public SSH key contents."
  type        = string
  sensitive   = true
}

variable "preemptible" {
  description = "Whether the VM is preemptible."
  type        = bool
  default     = true
}
