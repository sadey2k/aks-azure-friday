variable "resource_group_name" {
  default = "myrg01"
}

variable "resource_group_location" {
  default = "ukwest"
}


variable "aks_name" {
  default = "my-aks-demo01"
}

variable "dns_prefix" {
  default = "k8stest"
}

variable "admin_username" {
  default = "aksadmin1"
}

variable "node_count" {
  default = "2"
}

# SSH public key for Linux VMs
variable "ssh_public_key" {
  default = "C:/Users/Shola/.ssh/aks-prod-sshkeys/aksprodsshkey.pub"
  description = "ssh public key for the Linux K8 worker nodes"
}
