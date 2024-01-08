terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.78.0"
    }
  }
}

provider "azurerm" {
  use_oidc            = true
  storage_use_azuread = true
  features {}
}
 
# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating resource group to deploy in the azure portal.
module "azurerm_resource_group" {
  source = "./Modules/resoursegroup"
  resource_group_name = upper("kanchi-rg")
  resource_group_location = "West Europe"
}


# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating app service connection resource to deploy in the azure portal.
/*module "azurerm_cosmosdb_account" {
  source = "./Modules/AppserviceConnection"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  resource_group_location = module.azurerm_resource_group.resource_group_location
  name_cosmosdb_account01 = "cosmosdbaccount-db01"
  offer_type_cosmosdb_account01 = "Standard"
  kind_cosmosdb_account01 = "GlobalDocumentDB"
  consistency_level_consistency_policy = "BoundedStaleness"
  max_interval_in_seconds_consistency_policy = 10
  max_staleness_prefix_consistency_policy = 200
  failover_priority_geo_location = 0
  name_cosmosdb_sql_database = "cosmos-sql-db"
  throughput_cosmosdb_sql_database = 400
  name_cosmosdb_sql_container = "example-container"
  name_service_plan02 = "serviceplan-sp02"
  sku_name_service_plan02 = "P1v2"
  os_type_service_plan02 = "Linux"
  name_linux_web_app02 = "linuxwebapp-app02"
  name_app_service_connection = "serviceconn1"

}*/

# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating bastion host resource to deploy in the azure portal.
module "azurerm_bastion_host" {
  source = "./Modules/BastionHost"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  resource_group_location = module.azurerm_resource_group.resource_group_location
  name_bastion_host = "bastion-bh01"
  sku_public_ip = "Standard"
  allocation_method_public_ip = "Static"
  address_space_virtual_network = ["192.168.1.0/24"]
  address_prefixes_subnet = ["192.168.1.224/27"]
  name_public_ip = "publicip-pip01"
  name_virtual_network = "vnet-01"
  name_subnet = "AzureBastionSubnet"
  name_ip_configuration_bastion_host = "configuration"
}

# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating cluster resource to deploy in the azure portal.
module "azurerm_service_fabric_managed_cluster" {
  source = "./Modules/cluster"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  resource_group_location = module.azurerm_resource_group.resource_group_location
  backend_port_lb_rule_service_fabric_managed_cluster = 38080
  frontend_port_lb_rule_service_fabric_managed_cluster = 38080
  probe_protocol_lb_rule_service_fabric_managed_cluster = "http"
  probe_request_path_lb_rule_service_fabric_managed_cluster = "/test"
  protocol_lb_rule_service_fabric_managed_cluster = "tcp"
  client_connection_port_lb_rule_service_fabric_managed_cluster = 12345
  data_disk_size_gb_node_type_service_fabric_managed_cluster = 130
  vm_image_offer_node_type_service_fabric_managed_cluster = "WindowsServer"
  primary_node_type_service_fabric_managed_cluster = true
  vm_image_publisher_node_type_service_fabric_managed_cluster = "MicrosoftWindowsServer"
  vm_image_sku_node_type_service_fabric_managed_cluster = "2019-Datacenter"
  username_service_fabric_managed_cluster = "kanchibatra"
  name_node_type_service_fabric_managed_cluster = "test102"
  name_service_fabric_managed_cluster = "sfcluster01"
  vm_image_version_node_type_service_fabric_managed_cluster = "latest"
  http_gateway_port_service_fabric_managed_cluster = 4567
  password_service_fabric_managed_cluster = "kanchi@195364r7"
  vm_size_node_type_service_fabric_managed_cluster = "Standard_DS1_v2"
  application_port_range_node_type_service_fabric_managed_cluster = "30000-49000"
  ephemeral_port_range_node_type_service_fabric_managed_cluster = "10000-20000"
  vm_instance_count_node_type_service_fabric_managed_cluster = 5
}

# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating data factory resource to deploy in the azure portal.
module "azurerm_data_factory" {
  source = "./Modules/Datafactory"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  resource_group_location = module.azurerm_resource_group.resource_group_location
  name_data_factory = "datafactory-df01"
}

# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating eventgrid resource to deploy in the azure portal.
module "azurerm_eventgrid_system_topic" {
  source = "./Modules/eventgrid"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  resource_group_location = module.azurerm_resource_group.resource_group_location
  name_storage_account01 = "kbsaccoub1"
  account_tier_storage_account01 = "Standard"
  LRS_storage_account01 = "LRS"
  tags_environment = "staging"
  topic_type_eventgrid_system_topic = "Microsoft.Storage.StorageAccounts"
  name_eventgrid_system_topic = "topic-01"
}

# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating search service resource to deploy in the azure portal.
module "azurerm_search_service" {
  source = "./Modules/Searchservice"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  resource_group_location = module.azurerm_resource_group.resource_group_location
  name_sku_search_service = "standard"
  authentication_failure_mode = "http403"
  local_authentication_enabled = "true"
  name_search_service = "searchservice-ss01"
}

# servers
/*module "azurerm_postgresql_server" {
  source = "./Modules/servers"
  backup_retention_days_postgresql_server = 7
  ssl_enforcement_enabled_postgresql_server = true
  administrator_login_password_postgresql_server = "Kanchibatra@2024"
  sku_name_postgresql_server = "B_Gen5_2"
  public_network_access_enabled_postgresql_server = true
  version_postgresql_server = "11"
  name_postgresql_server = "psspostserver001"
  ssl_minimal_tls_version_enforced_postgresql_server = "TLS1_2"
  storage_mb_postgresql_server = 640000
  administrator_login_postgresql_server = "kanchadmin"
  auto_grow_enabled_postgresql_server = true
  geo_redundant_backup_enabled_postgresql_server = false
}*/




# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating servers mysql resource to deploy in the azure portal.
module "azurerm_mssql_server" {
  source = "./Modules/servers"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  resource_group_location = module.azurerm_resource_group.resource_group_location
  name_mssql_server = "kanchmssqlserver"
  version_mssql_server = "12.0"
  administrator_login_mssql_server = "kanchadmin123"
  administrator_login_password_mssql_server = "manifestingearth@12#4"
  login_username_azuread_administrator_mssql_server = "AzureAD Admin0001"
  minimum_tls_version_mssql_server = "1.2"
  object_id_azuread_administrator_mssql_server = "793729a4-a745-4e4f-8b8d-88bda288a86a"
}

# author : Kanchi Batra
# date : 05/12/2023
# purpose : we are creating Webapp slot resource to deploy in the azure portal.
module "azurerm_linux_web_app_slot" {
  source = "./Modules/WebAppSlot"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  resource_group_location = module.azurerm_resource_group.resource_group_location
  name_service_plan01 = "serviceplan-sp01"
  os_type_service_plan01 = "Linux"
  sku_name_service_plan01 = "P1v2"
  name_linux_web_app01 = "linuxwebapp-wa01"
  name_linux_web_app_slot = "webappslot-as01"
}







/*# web hosting env using azapi provider
module "azapi_hostingEnvironments" {
  source = "./Modules/azapihostinenv"
  name_hostingEnvironments = "Hostingenv-01"
  type_hostingEnvironments = "Microsoft.Web/hostingEnvironments@2021-03-01"
}*/


