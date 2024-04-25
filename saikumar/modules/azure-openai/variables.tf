variable "azure_openai_service_name" {
  type = string
  description = "The name of the Azure OpenAI service."
}

variable "location" {
  type = string
  description = "The location of the Azure OpenAI service."
}

variable "resource_group_name" {
  type = string
  description = "The name of the resource group."
}

variable "azure_openai_kind" {
  type = string
  description = "The kind of the Azure OpenAI service."
}

variable "sku_name" {
  type = string
  description = "The SKU name of the Azure OpenAI service."
}

variable "azure_openai_deployment_name" {
  type = string
  description = "The name of the Azure OpenAI deployment."
}