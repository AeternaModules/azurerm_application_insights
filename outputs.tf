output "application_insights_id" {
  description = "Map of id values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_insights_app_id" {
  description = "Map of app_id values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "application_insights_application_type" {
  description = "Map of application_type values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.application_type if v.application_type != null && length(v.application_type) > 0 }
}
output "application_insights_connection_string" {
  description = "Map of connection_string values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
  sensitive   = true
}
output "application_insights_daily_data_cap_in_gb" {
  description = "Map of daily_data_cap_in_gb values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.daily_data_cap_in_gb if v.daily_data_cap_in_gb != null }
}
output "application_insights_daily_data_cap_notifications_disabled" {
  description = "Map of daily_data_cap_notifications_disabled values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.daily_data_cap_notifications_disabled if v.daily_data_cap_notifications_disabled != null }
}
output "application_insights_daily_data_cap_notifications_enabled" {
  description = "Map of daily_data_cap_notifications_enabled values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.daily_data_cap_notifications_enabled if v.daily_data_cap_notifications_enabled != null }
}
output "application_insights_disable_ip_masking" {
  description = "Map of disable_ip_masking values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.disable_ip_masking if v.disable_ip_masking != null }
}
output "application_insights_force_customer_storage_for_profiler" {
  description = "Map of force_customer_storage_for_profiler values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.force_customer_storage_for_profiler if v.force_customer_storage_for_profiler != null }
}
output "application_insights_instrumentation_key" {
  description = "Map of instrumentation_key values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.instrumentation_key if v.instrumentation_key != null && length(v.instrumentation_key) > 0 }
  sensitive   = true
}
output "application_insights_internet_ingestion_enabled" {
  description = "Map of internet_ingestion_enabled values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.internet_ingestion_enabled if v.internet_ingestion_enabled != null }
}
output "application_insights_internet_query_enabled" {
  description = "Map of internet_query_enabled values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.internet_query_enabled if v.internet_query_enabled != null }
}
output "application_insights_ip_masking_enabled" {
  description = "Map of ip_masking_enabled values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.ip_masking_enabled if v.ip_masking_enabled != null }
}
output "application_insights_local_authentication_disabled" {
  description = "Map of local_authentication_disabled values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.local_authentication_disabled if v.local_authentication_disabled != null }
}
output "application_insights_local_authentication_enabled" {
  description = "Map of local_authentication_enabled values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.local_authentication_enabled if v.local_authentication_enabled != null }
}
output "application_insights_location" {
  description = "Map of location values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.location if v.location != null && length(v.location) > 0 }
}
output "application_insights_name" {
  description = "Map of name values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.name if v.name != null && length(v.name) > 0 }
}
output "application_insights_resource_group_name" {
  description = "Map of resource_group_name values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "application_insights_retention_in_days" {
  description = "Map of retention_in_days values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.retention_in_days if v.retention_in_days != null }
}
output "application_insights_sampling_percentage" {
  description = "Map of sampling_percentage values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.sampling_percentage if v.sampling_percentage != null }
}
output "application_insights_tags" {
  description = "Map of tags values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "application_insights_workspace_id" {
  description = "Map of workspace_id values across all application_insights, keyed the same as var.application_insights"
  value       = { for k, v in azurerm_application_insights.application_insights : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

