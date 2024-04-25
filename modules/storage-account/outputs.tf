output "id" {
  description = "The ID of the Azure Storage Account"
  value       = azurerm_storage_account.appstore.id
}

output "location" {
  description = "The location of the Azure Storage Account"
  value       = azurerm_storage_account.appstore.location
}

output "resource_group_name" {
  description = "The name of the resource group that the Azure Storage Account is in"
  value       = azurerm_storage_account.appstore.resource_group_name
}

output "primary_access_key" {
  value = azurerm_storage_account.appstore.primary_access_key
  sensitive = true
}

output "storage_account" {
  description = "The storage account"
  value = {
    name = azurerm_storage_account.appstore.name
    location = azurerm_storage_account.appstore.location
    // other non-sensitive attributes...
  }
  sensitive = false
}