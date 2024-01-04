# search service
variable "name_search_service" {
    type = string
    #default = "searchservice-ss01"
}

variable "name_sku_search_service" {
    type = string
}

variable resource_group_name {
    type = string
    #default = "kanch-rg"
}
variable resource_group_location {
    type = string
    #default = "West Europe"
}
variable local_authentication_enabled {
    type = string
    #default = "true"
}
variable authentication_failure_mode {
    type = string
    #default = "http403"
}
