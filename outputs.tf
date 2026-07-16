output "mysql_flexible_server_configurations_id" {
  description = "Map of id values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_flexible_server_configurations_name" {
  description = "Map of name values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mysql_flexible_server_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "mysql_flexible_server_configurations_server_name" {
  description = "Map of server_name values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.server_name if v.server_name != null && length(v.server_name) > 0 }
}
output "mysql_flexible_server_configurations_value" {
  description = "Map of value values across all mysql_flexible_server_configurations, keyed the same as var.mysql_flexible_server_configurations"
  value       = { for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : k => v.value if v.value != null && length(v.value) > 0 }
}

