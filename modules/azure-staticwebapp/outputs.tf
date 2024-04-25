output "id" {
  description = "The ID of the Azure Static Web App"
  value       = azurerm_static_web_app.static_web_app.id
}

output "location" {
  description = "The location of the Azure Static Web App"
  value       = azurerm_static_web_app.static_web_app.location
}

output "resource_group_name" {
  description = "The name of the resource group that the Azure Static Web App is in"
  value       = azurerm_static_web_app.static_web_app.resource_group_name
}