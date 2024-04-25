output "id" {
  description = "The ID of the Azure Web App"
  value       = azurerm_linux_web_app.aiops_webapp.id
}

output "location" {
  description = "The location of the Azure Web App"
  value       = azurerm_linux_web_app.aiops_webapp.location
}

output "resource_group_name" {
  description = "The name of the resource group that the Azure Web App is in"
  value       = azurerm_linux_web_app.aiops_webapp.resource_group_name
}