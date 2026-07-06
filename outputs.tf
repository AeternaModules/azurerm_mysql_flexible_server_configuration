output "mysql_flexible_server_configurations" {
  description = "All mysql_flexible_server_configuration resources"
  value       = azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations
}
output "mysql_flexible_server_configurations_name" {
  description = "List of name values across all mysql_flexible_server_configurations"
  value       = [for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : v.name]
}
output "mysql_flexible_server_configurations_resource_group_name" {
  description = "List of resource_group_name values across all mysql_flexible_server_configurations"
  value       = [for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : v.resource_group_name]
}
output "mysql_flexible_server_configurations_server_name" {
  description = "List of server_name values across all mysql_flexible_server_configurations"
  value       = [for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : v.server_name]
}
output "mysql_flexible_server_configurations_value" {
  description = "List of value values across all mysql_flexible_server_configurations"
  value       = [for k, v in azurerm_mysql_flexible_server_configuration.mysql_flexible_server_configurations : v.value]
}

