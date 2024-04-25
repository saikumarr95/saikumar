output "id" {
  description = "The ID of the Function App"
  value       = azurerm_function_app.function_app.id
}

output "location" {
  description = "The location of the Function App"
  value       = azurerm_function_app.function_app.location
}

output "resource_group_name" {
  description = "The name of the resource group that the Function App is in"
  value       = azurerm_function_app.function_app.resource_group_name
}