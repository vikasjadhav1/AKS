resource "azurerm_role_assignment" "storage_access" {

  scope = data.azurerm_storage_account.storage.id

  role_definition_name = "Storage Blob Data Contributor"

  principal_id = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}

resource "azurerm_role_assignment" "kv_access" {

  scope = data.azurerm_key_vault.kv.id

  role_definition_name = "Key Vault Secrets User"

  principal_id = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}