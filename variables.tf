variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "aks_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type = number
}

variable "vm_size" {
  type = string
}

variable "existing_storage_account_name" {
  type = string
}

variable "existing_keyvault_name" {
  type = string
}

variable "storage_rg_name" {
  type = string
}

variable "keyvault_rg_name" {
  type = string
}

variable "acr_name" {
  type    = string
  default = "devaksacr001"
}





