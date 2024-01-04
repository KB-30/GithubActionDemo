variable resource_group_name {
    type = string
    #default = "kanch-rg"
}
variable resource_group_location {
    type = string
    #default = "West Europe"
}
variable name_storage_account01 {
    type = string
    #default = "kbsaccoub1"
}
variable account_tier_storage_account01 {
    type = string
    #default = "Standard"
}
variable LRS_storage_account01 {
    type = string
    #default = "LRS"
}
variable name_eventgrid_system_topic {
    type = string
    #default = "topic-01"
}
variable tags_environment {
    type = string
    #default = "staging"
}
variable topic_type_eventgrid_system_topic {
    type = string
    #default = "Microsoft.Storage.StorageAccounts"
}