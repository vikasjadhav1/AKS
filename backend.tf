terraform {

  backend "azurerm" {

    resource_group_name  = "rg-tf-bootstrap"

    storage_account_name = "sttfbootstrap123"

    container_name       = "tfstate"

    key                  = "aks.tfstate"
  }
}