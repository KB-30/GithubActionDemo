provider "azurerm" {
  features {}
}
resource "azurerm_data_factory" "data_factory" {
  name                = var.name_data_factory
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}
