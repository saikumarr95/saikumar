locals {
  all_resources = merge(
    { for k, v in module.azure_openai : k => merge(v, { "type" = "openai", "subresource_name" = "subresource_for_openai" }) },
    { for k, v in module.azure_search : k => merge(v, { "type" = "search", "subresource_name" = "subresource_for_search" }) },
    { for k, v in module.azure_storage : k => merge(v, { "type" = "storage", "subresource_name" = "subresource_for_storage" }) },
   // { for k, v in module.azure_static_site : k => merge(v, { "type" = "static_site", "subresource_name" = "subresource_for_static_site" }) },
    { for k, v in module.azure_webapp : k => merge(v, { "type" = "webapp", "subresource_name" = "subresource_for_webapp" }) },
    { for k, v in module.azure_function : k => merge(v, { "type" = "function", "subresource_name" = "subresource_for_function" }) }
  )
}