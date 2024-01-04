variable resource_group_name {
    type = string
    #default = "kanch-rg"
}
variable resource_group_location {
    type = string
    #default = "West Europe"
}
variable name_virtual_network {
    type = string
    #default = "vnet-01"
}
variable "address_space_virtual_network" {
    type = list
    #default = ["192.168.1.0/24"]
}
variable name_subnet {
    type = string
    #default = "AzureBastionSubnet"
}
variable address_prefixes_subnet {
    type = list
    #default = ["192.168.1.224/27"]
}
variable name_public_ip {
    type = string
    #default = "publicip-pip01"
}
variable allocation_method_public_ip {
    type = string
    #default = "Static"
}
variable sku_public_ip {
    type = string
    #default = "Standard"
}
variable name_bastion_host {
    type = string
    #default = "bastion-bh01"
}
variable name_ip_configuration_bastion_host {
    type = string
    #default = "configuration"
}

