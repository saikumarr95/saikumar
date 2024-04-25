resource "azurerm_static_web_app" "static_web_app" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_tier            = "Free"
  sku_size            = "Standard"

  app_settings = {
    repository_url = var.repository_url
    branch       = var.branch
  }

}