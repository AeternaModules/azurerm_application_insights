resource "azurerm_application_insights" "application_insightses" {
  for_each = var.application_insightses

  application_type                      = each.value.application_type
  location                              = each.value.location
  name                                  = each.value.name
  resource_group_name                   = each.value.resource_group_name
  sampling_percentage                   = each.value.sampling_percentage
  retention_in_days                     = each.value.retention_in_days
  local_authentication_enabled          = each.value.local_authentication_enabled
  local_authentication_disabled         = each.value.local_authentication_disabled
  ip_masking_enabled                    = each.value.ip_masking_enabled
  internet_query_enabled                = each.value.internet_query_enabled
  force_customer_storage_for_profiler   = each.value.force_customer_storage_for_profiler
  tags                                  = each.value.tags
  disable_ip_masking                    = each.value.disable_ip_masking
  daily_data_cap_notifications_enabled  = each.value.daily_data_cap_notifications_enabled
  daily_data_cap_notifications_disabled = each.value.daily_data_cap_notifications_disabled
  daily_data_cap_in_gb                  = each.value.daily_data_cap_in_gb
  internet_ingestion_enabled            = each.value.internet_ingestion_enabled
  workspace_id                          = each.value.workspace_id
}

