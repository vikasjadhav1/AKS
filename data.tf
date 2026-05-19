data "azurerm_storage_account" "storage" {

  name                = var.existing_storage_account_name

  resource_group_name = var.storage_rg_name
}

data "azurerm_key_vault" "kv" {

  name                = var.existing_keyvault_name

  resource_group_name = var.keyvault_rg_name
}