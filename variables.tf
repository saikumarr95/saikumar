#Defintion for azure Openai Services
variable "azure_openai_services" {
  type = list(object({
    azure_openai_service_name = string
    location = string
    resource_group_name = string
    azure_openai_kind = string
    sku_name = string
    azure_openai_deployment_name = string
  }))
  description = "This defines the Azure OpenAI services configuration."
}

#Defintion for Azure Search Services

variable "search_services" {
  type = list(object({
    search_service_name = string
    resource_group_name = string
    location = string
    sku = string
  }))
  description = "The list of search services."
}

#Definition for storage account

variable "storage_accounts" {
  type = list(object({
    storage_account_name = string
    location = string
    environment = string
    resource_group_name = string
  }))
  description = "The list of storage accounts."
}


variable "static_sites" {
  type = list(object({
    name = string
    resource_group_name = string
    location = string
    repository_url = string
    branch = string
  }))
  description = "The list of static sites."
}

variable "webapps" {
  type = list(object({
    aiops_serviceplan_name = string
    aiops_webapp_name = string
    resource_group_name = string
    location = string
    os_type = string
    app_settings = map(string)
  }))
  description = "The list of web apps."
}

variable "function_app" {
  description = "Configuration for Azure Function App"
  type = list(object({
    name = string
    resource_group_name = string
    location = string
    storage_account_name = string
    storage_account_access_key = string  
    app_service_plan_name = string
    runtime_version = string
  }))
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the private endpoint will be created."
  default     = "value"
}


