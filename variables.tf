variable "application_insights" {
  description = <<EOT
Map of application_insights, attributes below
Required:
    - application_type
    - location
    - name
    - resource_group_name
Optional:
    - daily_data_cap_in_gb
    - daily_data_cap_notifications_disabled
    - daily_data_cap_notifications_enabled
    - disable_ip_masking
    - force_customer_storage_for_profiler
    - internet_ingestion_enabled
    - internet_query_enabled
    - ip_masking_enabled
    - local_authentication_disabled
    - local_authentication_enabled
    - retention_in_days
    - sampling_percentage
    - tags
    - workspace_id
EOT

  type = map(object({
    application_type                      = string
    location                              = string
    name                                  = string
    resource_group_name                   = string
    sampling_percentage                   = optional(number) # Default: 100
    retention_in_days                     = optional(number) # Default: 90
    local_authentication_enabled          = optional(bool)
    local_authentication_disabled         = optional(bool)
    ip_masking_enabled                    = optional(bool)
    internet_query_enabled                = optional(bool) # Default: true
    force_customer_storage_for_profiler   = optional(bool) # Default: false
    tags                                  = optional(map(string))
    disable_ip_masking                    = optional(bool)
    daily_data_cap_notifications_enabled  = optional(bool)
    daily_data_cap_notifications_disabled = optional(bool)
    daily_data_cap_in_gb                  = optional(number) # Default: 100
    internet_ingestion_enabled            = optional(bool)   # Default: true
    workspace_id                          = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_application_insights's provider source ---
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
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: application_type
  #   condition: contains(["web", "other", "java", "MobileCenter", "phone", "store", "ios", "Node.JS"], value)
  #   message:   must be one of: web, other, java, MobileCenter, phone, store, ios, Node.JS
  # path: workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: retention_in_days
  #   source:    validation.IntInSlice(...) - no translation rule yet, add one
  # path: sampling_percentage
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: daily_data_cap_in_gb
  #   source:    validation.FloatAtLeast(...) - no translation rule yet, add one
}

