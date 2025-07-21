terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "4a8882d8-040a-43b9-81c8-844e324752c0"

  features {}
}

resource "azurerm_resource_group" "ljrg" {
  name     = "myrg"
  location = "West Europe"
}

