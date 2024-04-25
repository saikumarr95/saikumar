resource "azurerm_app_service_plan" "plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "FunctionApp"
  reserved            = true  # Required for Linux

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "function_app" {
  name                       = var.function_app_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_app_service_plan.plan.id
  storage_account_name       = var.storage_account_name
  storage_account_access_key= var.storage_account_access_key
  os_type                    = "linux"
  version                    = "~3"

  site_config {
    linux_fx_version = "PYTHON|${var.runtime_version}"
  }

  app_settings = {
    FUNCTIONS_WORKER_RUNTIME = "python"
  }
}

data "azurerm_storage_account" "sa" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
}