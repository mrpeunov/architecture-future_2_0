terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.130"
    }
  }
}

data "yandex_compute_image" "this" {
  family = var.image_family
}

resource "yandex_compute_disk" "boot" {
  name     = "${var.vm_name}-boot-disk"
  type     = var.disk_type
  zone     = var.zone
  image_id = data.yandex_compute_image.this.image_id
  size     = var.disk_size
}

resource "yandex_compute_instance" "this" {
  name        = var.vm_name
  hostname    = var.hostname
  platform_id = var.platform_id
  zone        = var.zone

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot.id
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.enable_nat
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${var.ssh_public_key}"
  }

  scheduling_policy {
    preemptible = var.preemptible
  }
}
