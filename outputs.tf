output "mysql_flexible_server_configurations_name" {
  description = "Map of name values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.name }
}
output "mysql_flexible_server_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.resource_group_name }
}
output "mysql_flexible_server_configurations_server_name" {
  description = "Map of server_name values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.server_name }
}
output "mysql_flexible_server_configurations_value" {
  description = "Map of value values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.value }
}

