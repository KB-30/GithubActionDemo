provider "azurerm" {
  features {}
}
resource "azurerm_service_fabric_managed_cluster" "service_fabric_managed_cluster" {
  name                = var.name_service_fabric_managed_cluster
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  http_gateway_port   = var.http_gateway_port_service_fabric_managed_cluster
  username = var.username_service_fabric_managed_cluster
  password = var.password_service_fabric_managed_cluster

  lb_rule {
    backend_port       = var.backend_port_lb_rule_service_fabric_managed_cluster
    frontend_port      = var.frontend_port_lb_rule_service_fabric_managed_cluster
    probe_protocol     = var.probe_protocol_lb_rule_service_fabric_managed_cluster
    probe_request_path = var.probe_request_path_lb_rule_service_fabric_managed_cluster
    protocol           = var.protocol_lb_rule_service_fabric_managed_cluster
  }
  client_connection_port = var.client_connection_port_lb_rule_service_fabric_managed_cluster

  node_type {
    data_disk_size_gb      = var.data_disk_size_gb_node_type_service_fabric_managed_cluster
    name                   = var.name_node_type_service_fabric_managed_cluster
    primary                = var.primary_node_type_service_fabric_managed_cluster
    application_port_range = var.application_port_range_node_type_service_fabric_managed_cluster
    ephemeral_port_range   = var.ephemeral_port_range_node_type_service_fabric_managed_cluster

    vm_size            = var.vm_size_node_type_service_fabric_managed_cluster
    vm_image_publisher = var.vm_image_publisher_node_type_service_fabric_managed_cluster
    vm_image_sku       = var.vm_image_sku_node_type_service_fabric_managed_cluster
    vm_image_offer     = var.vm_image_offer_node_type_service_fabric_managed_cluster
    vm_image_version   = var.vm_image_version_node_type_service_fabric_managed_cluster
    vm_instance_count  = var.vm_instance_count_node_type_service_fabric_managed_cluster
  }
}