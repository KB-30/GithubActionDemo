variable resource_group_name {
    type = string
    #default = "kanch-rg"
}
variable resource_group_location {
    type = string
    #default = "West Europe"
}
/*variable name_postgresql_server {
    type = string
    #default = "psspostserver001"
}
variable administrator_login_postgresql_server {
    type = string
    #default = "kanchadmin"
}
variable administrator_login_password_postgresql_server{
    type = string
    #default = "K@2024"
}
variable sku_name_postgresql_server {
    type = string
    #default = "B_Gen5_2"
}
variable version_postgresql_server {
    type = string
    #default = "11"
}
variable storage_mb_postgresql_server {
    type = number
    #default = 640000
}
variable backup_retention_days_postgresql_server {
    type = number
    #default = 7
}
variable geo_redundant_backup_enabled_postgresql_server {
    type = bool
    #default = false
}
variable auto_grow_enabled_postgresql_server {
    type = bool
    #default = true
}
variable public_network_access_enabled_postgresql_server {
    type = bool
    #default = false
}
variable ssl_enforcement_enabled_postgresql_server {
    type = bool
    #default = true
}
variable ssl_minimal_tls_version_enforced_postgresql_server {
    type = string
    #default = "TLS1_2"
}*/

variable name_mssql_server {
    type = string
    #default = "kanchmssqlserver"
}

variable version_mssql_server {
    type = string
    #default = "12.0"
}

variable administrator_login_mssql_server {
    type = string
    #default = "kanchadmin123"
}
variable administrator_login_password_mssql_server {
    type = string
    #default = "batrakan123"
}
variable minimum_tls_version_mssql_server {
    type = string
    #default = "1.2"
}
variable login_username_azuread_administrator_mssql_server {
    type = string
    #default = "AzureAD Admin0001"
}
variable object_id_azuread_administrator_mssql_server {
    type = string
    #default = "00000000-0000-0000-0000-000000000000"
}
