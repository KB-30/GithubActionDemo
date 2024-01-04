provider "azurerm" {
  features {}
}

resource "azurerm_service_plan" "service_plan01" {
  name                = var.name_service_plan01
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  os_type             = var.os_type_service_plan01
  sku_name            = var.sku_name_service_plan01
}

resource "azurerm_linux_web_app" "linux_web_app01" {
  name                = var.name_linux_web_app01
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  service_plan_id     = azurerm_service_plan.service_plan01.id

  site_config {}
}

resource "azurerm_linux_web_app_slot" "linux_web_app_slot" {
  name           = var.name_linux_web_app_slot
  app_service_id = azurerm_linux_web_app.linux_web_app01.id

  site_config {}
}