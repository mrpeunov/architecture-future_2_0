output "vm_id" {
  description = "Created virtual machine ID."
  value       = module.vm.vm_id
}

output "vm_name" {
  description = "Created virtual machine name."
  value       = module.vm.vm_name
}

output "internal_ip_address" {
  description = "Private IP address of the virtual machine."
  value       = module.vm.internal_ip_address
}

output "external_ip_address" {
  description = "Public NAT IP address of the virtual machine, if NAT is enabled."
  value       = module.vm.external_ip_address
}

output "boot_disk_id" {
  description = "Boot disk ID."
  value       = module.vm.boot_disk_id
}

output "boot_disk_name" {
  description = "Boot disk name."
  value       = module.vm.boot_disk_name
}
