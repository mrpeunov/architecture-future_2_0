terraform {
  required_version = ">= 1.5.0"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.130"
    }
  }
}

provider "yandex" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

module "vm" {
  source = "../modules/vm"

  zone           = var.zone
  subnet_id      = var.subnet_id
  vm_name        = var.vm_name
  hostname       = var.hostname
  cores          = var.cores
  memory         = var.memory
  disk_size      = var.disk_size
  disk_type      = var.disk_type
  image_family   = var.image_family
  platform_id    = var.platform_id
  enable_nat     = var.enable_nat
  ssh_user       = var.ssh_user
  ssh_public_key = var.ssh_public_key
  preemptible    = var.preemptible
}
