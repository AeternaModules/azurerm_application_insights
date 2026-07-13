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
    sampling_percentage                   = optional(number)
    retention_in_days                     = optional(number)
    local_authentication_enabled          = optional(bool)
    local_authentication_disabled         = optional(bool)
    ip_masking_enabled                    = optional(bool)
    internet_query_enabled                = optional(bool)
    force_customer_storage_for_profiler   = optional(bool)
    tags                                  = optional(map(string))
    disable_ip_masking                    = optional(bool)
    daily_data_cap_notifications_enabled  = optional(bool)
    daily_data_cap_notifications_disabled = optional(bool)
    daily_data_cap_in_gb                  = optional(number)
    internet_ingestion_enabled            = optional(bool)
    workspace_id                          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_insights : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights : (
        contains(["web", "other", "java", "MobileCenter", "phone", "store", "ios", "Node.JS"], v.application_type)
      )
    ])
    error_message = "must be one of: web, other, java, MobileCenter, phone, store, ios, Node.JS"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights : (
        v.retention_in_days == null || (contains([30, 60, 90, 120, 180, 270, 365, 550, 730], v.retention_in_days))
      )
    ])
    error_message = "must be one of: 30, 60, 90, 120, 180, 270, 365, 550, 730"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights : (
        v.sampling_percentage == null || (v.sampling_percentage >= 0 && v.sampling_percentage <= 100)
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_insights : (
        v.daily_data_cap_in_gb == null || (v.daily_data_cap_in_gb >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

