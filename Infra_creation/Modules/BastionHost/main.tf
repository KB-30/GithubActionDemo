provider "azurerm" {
  features {}
}
resource "azurerm_virtual_network" "virtual_network" {
  name                = var.name_virtual_network
  address_space       = var.address_space_virtual_network
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet" {
  name                 = var.name_subnet
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = var.address_prefixes_subnet
}

resource "azurerm_public_ip" "public_ip" {
  name                = var.name_public_ip
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method_public_ip
  sku                 = var.sku_public_ip
}

resource "azurerm_bastion_host" "bastion_host" {
  name                = var.name_bastion_host
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                 = var.name_ip_configuration_bastion_host
    subnet_id            = azurerm_subnet.subnet.id
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}