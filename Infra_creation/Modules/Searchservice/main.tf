provider "azurerm" {
  features {}
}

resource "azurerm_search_service" "search_service" {
  name                = var.name_search_service
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  sku                 = var.name_sku_search_service

  local_authentication_enabled = var.local_authentication_enabled
  authentication_failure_mode  = var.authentication_failure_mode
}
