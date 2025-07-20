terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
    subscription_id = "4a8882d8-040a-43b9-81c8-844e324752c0"

  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myrg"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage" {
  name = "tgstorage777"
  resource_group_name = "myrg"
  location = "West Europe"
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
   name = "container1"
   storage_account_id = "/subscriptions/4a8882d8-040a-43b9-81c8-844e324752c0/resourceGroups/myrg/providers/Microsoft.Storage/storageAccounts/tgstorage777"	#In overview in json
   container_access_type ="container"
}

resource "azurerm_storage_blob" "blob" {						#BLOB=binary large object
   name = "jeena123"
   storage_account_name = "tgstorage777"
   storage_container_name = "container1"
   type = "Block"
   source = "main.tf"

}
