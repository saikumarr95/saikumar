variable "name" {
  type        = string
  description = "The name of the static site."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The location/region where the static site should be created."
}

variable "repository_url" {
  type        = string
  description = "The URL of the repository to use as the source for the static site."
}

variable "branch" {
  type        = string
  description = "The branch of the repository to use as the source for the static site."
}