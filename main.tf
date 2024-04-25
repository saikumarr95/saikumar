#Definition for azure openai for aiops

module "azure_openai" {
  source = "./modules/azure-openai"  # Update this with the path to your module

  for_each = { for service in var.azure_openai_services : service.azure_openai_service_name => service }

  azure_openai_service_name = each.value.azure_openai_service_name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  azure_openai_kind = each.value.azure_openai_kind
  sku_name = each.value.sku_name
  azure_openai_deployment_name = each.value.azure_openai_deployment_name
}

#Definition for azure search service for aiops

module "azure_search" {
  source = "./modules/azure-search"  # Update this with the path to your module

  for_each = { for service in var.search_services : service.search_service_name => service }

  search_service_name = each.value.search_service_name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  sku = each.value.sku

}

#definition for storage account
#Definition for azure storage account
module "azure_storage" {
  source = "./modules/storage-account"  # Update this with the path to your module

  for_each = { for account in var.storage_accounts : account.storage_account_name => account }

  storage_account_name = each.value.storage_account_name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
}
#Definition for static webap

module "azure_static_site" {
  source = "./modules/azure-staticwebapp"  # Update this with the path to your module

  for_each = { for site in var.static_sites : site.name => site }

  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  repository_url = each.value.repository_url
  branch = each.value.branch
}

#Definition for web app

module "azure_webapp" {
  source = "./modules/azure-webapp"  # Update this with the path to your module

  for_each = { for app in var.webapps : app.aiops_webapp_name => app } 

  aiops_serviceplan_name = each.value.aiops_serviceplan_name
  aiops_webapp_name = each.value.aiops_webapp_name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  os_type = each.value.os_type
  app_settings = each.value.app_settings

}


#Definition for azure function app



module "azure_function" {
  source = "./modules/azure-functionapp"  # Update this with the path to your module

  for_each = { for app in var.function_app : app.storage_account_name => app }

  function_app_name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  storage_account_name = each.value.storage_account_name
  app_service_plan_name = each.value.app_service_plan_name
  runtime_version = each.value.runtime_version
  storage_account_access_key = module.azure_storage[each.key].primary_access_key

  depends_on = [module.azure_storage]

}

#Definiiont for Private endpoint

module "private_endpoint" {
  source = "./modules/private-endpoint"

  for_each = local.all_resources

  private_endpoint_name = "pe_${each.value.type}_${each.key}"
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  private_service_connection = "psc_${each.value.type}_${each.key}"
  resource_id = each.value.id
  subresource_name = each.value.subresource_name
  subnet_id = flatten(data.azurerm_subnet.virtualSubnets1.*.id)[0]
}


  