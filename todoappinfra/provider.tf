terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraformstorage123"
    storage_account_name = "stgterraform1426"
    container_name       = "mycontainer1234"
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
  subscription_id = "561ee10c-91f3-420a-b686-4bb845074d5c"
}
