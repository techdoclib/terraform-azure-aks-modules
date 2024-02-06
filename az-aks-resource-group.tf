# Terraform Resource to Create Azure Resource Group with Input Variables defined in variables.tf
variable "environment" {
  default = "dev"
}
variable "resource_group_name" {
  default = "aks-v1-demo"
}
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "Central India"
}
resource "azurerm_resource_group" "aks_rg" {
  name = "${var.resource_group_name}-${var.environment}"
  location = var.location
}


