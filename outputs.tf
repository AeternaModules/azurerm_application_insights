output "application_insightses" {
  description = "All application_insights resources"
  value       = azurerm_application_insights.application_insightses
  sensitive   = true
}
output "application_insightses_app_id" {
  description = "List of app_id values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.app_id]
}
output "application_insightses_application_type" {
  description = "List of application_type values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.application_type]
}
output "application_insightses_connection_string" {
  description = "List of connection_string values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.connection_string]
  sensitive   = true
}
output "application_insightses_daily_data_cap_in_gb" {
  description = "List of daily_data_cap_in_gb values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.daily_data_cap_in_gb]
}
output "application_insightses_daily_data_cap_notifications_disabled" {
  description = "List of daily_data_cap_notifications_disabled values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.daily_data_cap_notifications_disabled]
}
output "application_insightses_daily_data_cap_notifications_enabled" {
  description = "List of daily_data_cap_notifications_enabled values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.daily_data_cap_notifications_enabled]
}
output "application_insightses_disable_ip_masking" {
  description = "List of disable_ip_masking values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.disable_ip_masking]
}
output "application_insightses_force_customer_storage_for_profiler" {
  description = "List of force_customer_storage_for_profiler values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.force_customer_storage_for_profiler]
}
output "application_insightses_instrumentation_key" {
  description = "List of instrumentation_key values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.instrumentation_key]
  sensitive   = true
}
output "application_insightses_internet_ingestion_enabled" {
  description = "List of internet_ingestion_enabled values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.internet_ingestion_enabled]
}
output "application_insightses_internet_query_enabled" {
  description = "List of internet_query_enabled values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.internet_query_enabled]
}
output "application_insightses_ip_masking_enabled" {
  description = "List of ip_masking_enabled values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.ip_masking_enabled]
}
output "application_insightses_local_authentication_disabled" {
  description = "List of local_authentication_disabled values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.local_authentication_disabled]
}
output "application_insightses_local_authentication_enabled" {
  description = "List of local_authentication_enabled values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.local_authentication_enabled]
}
output "application_insightses_location" {
  description = "List of location values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.location]
}
output "application_insightses_name" {
  description = "List of name values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.name]
}
output "application_insightses_resource_group_name" {
  description = "List of resource_group_name values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.resource_group_name]
}
output "application_insightses_retention_in_days" {
  description = "List of retention_in_days values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.retention_in_days]
}
output "application_insightses_sampling_percentage" {
  description = "List of sampling_percentage values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.sampling_percentage]
}
output "application_insightses_tags" {
  description = "List of tags values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.tags]
}
output "application_insightses_workspace_id" {
  description = "List of workspace_id values across all application_insightses"
  value       = [for k, v in azurerm_application_insights.application_insightses : v.workspace_id]
}

