resource "azurerm_container_registry" "acr" {

  name                = var.acr_name

  resource_group_name = azurerm_resource_group.rg.name

  location            = var.location

  sku                 = "Basic"

  admin_enabled       = false

  tags = {
    Environment = "Dev"
    Terraform   = "True"
  }
}

# Give AKS permission to pull images from ACR

resource "azurerm_role_assignment" "acr_pull" {

  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id

  role_definition_name = "AcrPull"

  scope                = azurerm_container_registry.acr.id
}