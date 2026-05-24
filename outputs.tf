output "aks_name" {

  value = azurerm_kubernetes_cluster.aks.name
}

output "aks_id" {

  value = azurerm_kubernetes_cluster.aks.id
}

output "kube_config" {

  value = azurerm_kubernetes_cluster.aks.kube_config_raw

  sensitive = true
}

output "storage_account_id" {

  value = data.azurerm_storage_account.storage.id
}

output "keyvault_id" {

  value = data.azurerm_key_vault.kv.id
}

output "acr_login_server" {

  value = azurerm_container_registry.acr.login_server
}

output "acr_id" {

  value = azurerm_container_registry.acr.id
}