output "id" {
  description = "The ID of the Azure OpenAI service"
  value       = azurerm_cognitive_account.azure_open_ai.id
}

output "location" {
  description = "The location of the Azure OpenAI service"
  value       = azurerm_cognitive_account.azure_open_ai.location
}

output "resource_group_name" {
  description = "The name of the resource group that the Azure OpenAI service is in"
  value       = azurerm_cognitive_account.azure_open_ai.resource_group_name
}