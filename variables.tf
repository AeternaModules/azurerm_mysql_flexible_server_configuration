variable "mysql_flexible_server_configurations" {
  description = <<EOT
Map of mysql_flexible_server_configurations, attributes below
Required:
    - name
    - resource_group_name
    - server_name
    - value
EOT

  type = map(object({
    name                = string
    resource_group_name = string
    server_name         = string
    value               = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_server_configurations : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_server_configurations : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_server_configurations : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

