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
  # --- Unconfirmed validation candidates, derived from azurerm_mysql_flexible_server_configuration's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: server_name
  #   source:    validate.ServerName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

