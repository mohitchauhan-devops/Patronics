terraform {
  backend "azurerm" {
    resource_group_name  = "container_rg"
    storage_account_name = "statefilestg1"
    container_name       = "mohitcontainer"
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
  subscription_id = "c062a425-c2d5-45ea-abe3-e00aca98b5cf"
}