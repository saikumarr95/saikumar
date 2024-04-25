variable "aiops_serviceplan_name" {
  type        = string
  description = "The name of the App Service Plan."
}

variable "aiops_webapp_name" {
  type        = string
  description = "The name of the Web App."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The location/region where the resources should be created."
}

variable "os_type" {
  type        = string
  description = "The operating system type for the App Service Plan."
}

variable "app_settings" {
  type        = map(string)
  description = "The app settings for the Web App."
  default     = {}
}