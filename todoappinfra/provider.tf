terraform {
required_version = ">= 1.9.0"
  backend "azurerm" {
    resource_group_name  = "rg-terraformstorage123"
    storage_account_name = "stgterra1426"
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
  subscription_id = "81295e46-3820-4970-b3bf-3c33751bb0da"
}
