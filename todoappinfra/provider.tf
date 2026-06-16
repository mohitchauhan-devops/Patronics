terraform {
  backend "azurerm" {
    resource_group_name  = "container_rg"
    storage_account_name = "statefilestg12"
    container_name       = "mohitcontainer12"
    key                  = "patronics_terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "69ba3bc7-f967-4749-bbe8-54cb06e4a54a"
}
