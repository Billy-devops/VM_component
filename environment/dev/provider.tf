terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "ancient011"
    resource_group_name  = "mira"
    container_name       = "era"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6123f378-6ceb-4ba0-83c4-0ed63b739551"
}
