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
  subscription_id = "16a05a8e-7ba4-486d-8521-57e717aedbbd"

  features {}
}

resource "azurerm_resource_group" "ljrg" {
  name     = "myrg"
  location = "West Europe"
}

