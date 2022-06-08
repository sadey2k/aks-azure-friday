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