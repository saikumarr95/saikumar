variable "search_service_name" {
  type        = string
  description = "The name of the search service."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the search service."
}

variable "location" {
  type        = string
  description = "The location/region in which to create the search service."
}

variable "sku" {
  type        = string
  description = "The SKU of the search service."
}