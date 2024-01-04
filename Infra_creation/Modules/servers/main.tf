provider "azurerm" {
  features {}
}

resource "azurerm_mssql_server" "mssql_server" {
  name                         = var.name_mssql_server
  resource_group_name          = var.resource_group_name
  location                     = var.resource_group_location
  version                      = var.version_mssql_server
  administrator_login          = var.administrator_login_mssql_server
  administrator_login_password = var.administrator_login_password_mssql_server
  minimum_tls_version          = var.minimum_tls_version_mssql_server

  azuread_administrator {
    login_username = var.login_username_azuread_administrator_mssql_server
    object_id      = var.object_id_azuread_administrator_mssql_server
  }
}