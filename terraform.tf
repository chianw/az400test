terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.14.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "az400rg"
    storage_account_name = "az400tfstate12"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

