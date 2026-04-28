output "vm_id" {
  description = "Created virtual machine ID."
  value       = yandex_compute_instance.this.id
}

output "vm_name" {
  description = "Created virtual machine name."
  value       = yandex_compute_instance.this.name
}

output "internal_ip_address" {
  description = "Private IP address of the virtual machine."
  value       = yandex_compute_instance.this.network_interface[0].ip_address
}

output "external_ip_address" {
  description = "Public NAT IP address of the virtual machine, if NAT is enabled."
  value       = try(yandex_compute_instance.this.network_interface[0].nat_ip_address, null)
}

output "boot_disk_id" {
  description = "Boot disk ID."
  value       = yandex_compute_disk.boot.id
}

output "boot_disk_name" {
  description = "Boot disk name."
  value       = yandex_compute_disk.boot.name
}
