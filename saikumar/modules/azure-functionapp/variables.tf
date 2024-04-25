variable "resource_group_name" {
  type = string
  description = "The name of the resource group."
}

variable "location" {
  type = string
  description = "The Azure region in which resources are created."
}

variable "storage_account_name" {
  type = string
  description = "The name of the storage account."
}

variable "app_service_plan_name" {
  type = string
  description = "The name of the app service plan."
}

variable "function_app_name" {
  type = string
  description = "The name of the function app."
}

variable "runtime_version" {
  type = string
  description = "The runtime version of the function app."
}
variable "storage_account_access_key" {
  type = string
  description = "The access key for the storage account."
}