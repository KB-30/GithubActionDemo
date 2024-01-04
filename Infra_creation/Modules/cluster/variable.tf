variable resource_group_name {
    type = string
    #default = "kanch-rg"
}
variable resource_group_location {
    type = string
    #default = "West Europe"
}
variable name_service_fabric_managed_cluster {
    type = string
    #default = "sfcluster01"
}
variable http_gateway_port_service_fabric_managed_cluster {
    type = number
    #default = 4567
}
variable username_service_fabric_managed_cluster {
    type = string
    #default = "kanchibatra"
}
variable password_service_fabric_managed_cluster {
    type = string
    #default = "kanchi@195364r7"
}
variable backend_port_lb_rule_service_fabric_managed_cluster {
    type = number
    #default = 38080
}
variable frontend_port_lb_rule_service_fabric_managed_cluster {
    type = number
    #default = 38080
}
variable probe_protocol_lb_rule_service_fabric_managed_cluster {
    type = string
    #default = "http"
}
variable probe_request_path_lb_rule_service_fabric_managed_cluster {
    type = string
    #default = "/test"
}
variable protocol_lb_rule_service_fabric_managed_cluster {
    type = string
    #default = "tcp"
}
variable client_connection_port_lb_rule_service_fabric_managed_cluster {
    type = number
    #default = 12345
}
variable data_disk_size_gb_node_type_service_fabric_managed_cluster {
    type = number
    #default = 130
}
variable name_node_type_service_fabric_managed_cluster {
    type = string
    #default = "test102"
}
variable primary_node_type_service_fabric_managed_cluster {
    type = bool
    #default = true
}
variable application_port_range_node_type_service_fabric_managed_cluster {
    type = string
    #default = "30000-49000"
}
variable ephemeral_port_range_node_type_service_fabric_managed_cluster {
    type = string
    #default = "10000-20000"
}
variable vm_size_node_type_service_fabric_managed_cluster {
    type = string
    #default = "Standard_DS1_v2"
}
variable vm_image_publisher_node_type_service_fabric_managed_cluster {
    type = string
    #default = "MicrosoftWindowsServer"
}
variable vm_image_sku_node_type_service_fabric_managed_cluster {
    type = string
    #default = "2019-Datacenter"
}
variable vm_image_offer_node_type_service_fabric_managed_cluster {
    type = string
    #default = "WindowsServer"
}
variable vm_image_version_node_type_service_fabric_managed_cluster {
    type = string
    #default = "latest"
}
variable vm_instance_count_node_type_service_fabric_managed_cluster {
    type = number
    #default = 5
}
