cloud_id    = "replace-with-your-cloud-id"
folder_id   = "replace-with-your-folder-id"
zone        = "ru-central1-a"
subnet_id   = "replace-with-prod-subnet-id"

vm_name     = "study-prod-vm"
hostname    = "study-prod-vm"
cores       = 4
memory      = 4
disk_size   = 30
disk_type   = "network-ssd"
preemptible = false

ssh_public_key = "ssh-ed25519 replace-with-your-public-key-comment"
