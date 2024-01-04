provider "azurerm" {
  features {}
}
resource "azurerm_storage_account" "storage_account01" {
  name                     = var.name_storage_account01
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.account_tier_storage_account01
  account_replication_type = var.LRS_storage_account01

  tags = {
    environment = var.tags_environment
  }
}

resource "azurerm_eventgrid_system_topic" "eventgrid_system_topic" {
  name                   = var.name_eventgrid_system_topic
  resource_group_name    = var.resource_group_name
  location               = var.resource_group_location
  source_arm_resource_id = azurerm_storage_account.storage_account01.id
  topic_type             = var.topic_type_eventgrid_system_topic
}