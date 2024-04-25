output "id" {
  description = "The ID of the Azure Search service"
  value       = azurerm_search_service.search-service.id
}

output "location" {
  description = "The location of the Azure Search service"
  value       = azurerm_search_service.search-service.location
}

output "resource_group_name" {
  description = "The name of the resource group that the Azure Search service is in"
  value       = azurerm_search_service.search-service.resource_group_name
}