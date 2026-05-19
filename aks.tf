resource "azurerm_kubernetes_cluster" "aks" {

  name                = var.aks_name

  location            = var.location

  resource_group_name = azurerm_resource_group.rg.name
  oidc_issuer_enabled = true
  dns_prefix = var.dns_prefix

  default_node_pool {

    name = "system"

    node_count = var.node_count

    vm_size = var.vm_size

    os_disk_size_gb = 50

    type = "VirtualMachineScaleSets"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {

    network_plugin = "azure"

    load_balancer_sku = "standard"
  }

  key_vault_secrets_provider {

    secret_rotation_enabled = true
  }

  oms_agent {

    log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
  }

  tags = {

    Environment = "Dev"

    Terraform = "True"
  }
}