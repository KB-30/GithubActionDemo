variable resource_group_name {
    type = string
    #default = "kanch-rg"
}
variable resource_group_location {
    type = string
    #default = "West Europe"
}
variable name_service_plan01 {
    type = string
    #default = "serviceplan-sp01"
}
variable os_type_service_plan01 {
    type = string
    #default = "Linux"
}
variable sku_name_service_plan01  {
    type = string
    #default = "P1v2"
}
variable name_linux_web_app01 {
    type = string
    #default = "linuxwebapp-wa01"
}
variable name_linux_web_app_slot {
    type = string
    #default = "webappslot-as01"
}
