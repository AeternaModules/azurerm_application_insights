output "application_insightses_app_id" {
  description = "Map of app_id values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.app_id }
}
output "application_insightses_application_type" {
  description = "Map of application_type values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.application_type }
}
output "application_insightses_connection_string" {
  description = "Map of connection_string values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.connection_string }
  sensitive   = true
}
output "application_insightses_daily_data_cap_in_gb" {
  description = "Map of daily_data_cap_in_gb values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.daily_data_cap_in_gb }
}
output "application_insightses_daily_data_cap_notifications_disabled" {
  description = "Map of daily_data_cap_notifications_disabled values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.daily_data_cap_notifications_disabled }
}
output "application_insightses_daily_data_cap_notifications_enabled" {
  description = "Map of daily_data_cap_notifications_enabled values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.daily_data_cap_notifications_enabled }
}
output "application_insightses_disable_ip_masking" {
  description = "Map of disable_ip_masking values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.disable_ip_masking }
}
output "application_insightses_force_customer_storage_for_profiler" {
  description = "Map of force_customer_storage_for_profiler values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.force_customer_storage_for_profiler }
}
output "application_insightses_instrumentation_key" {
  description = "Map of instrumentation_key values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.instrumentation_key }
  sensitive   = true
}
output "application_insightses_internet_ingestion_enabled" {
  description = "Map of internet_ingestion_enabled values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.internet_ingestion_enabled }
}
output "application_insightses_internet_query_enabled" {
  description = "Map of internet_query_enabled values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.internet_query_enabled }
}
output "application_insightses_ip_masking_enabled" {
  description = "Map of ip_masking_enabled values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.ip_masking_enabled }
}
output "application_insightses_local_authentication_disabled" {
  description = "Map of local_authentication_disabled values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.local_authentication_disabled }
}
output "application_insightses_local_authentication_enabled" {
  description = "Map of local_authentication_enabled values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.local_authentication_enabled }
}
output "application_insightses_location" {
  description = "Map of location values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.location }
}
output "application_insightses_name" {
  description = "Map of name values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.name }
}
output "application_insightses_resource_group_name" {
  description = "Map of resource_group_name values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.resource_group_name }
}
output "application_insightses_retention_in_days" {
  description = "Map of retention_in_days values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.retention_in_days }
}
output "application_insightses_sampling_percentage" {
  description = "Map of sampling_percentage values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.sampling_percentage }
}
output "application_insightses_tags" {
  description = "Map of tags values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.tags }
}
output "application_insightses_workspace_id" {
  description = "Map of workspace_id values across all application_insightses, keyed the same as var.application_insightses"
  value       = { for k, v in azurerm_application_insights.application_insightses : k => v.workspace_id }
}

