# always important to specify the exact version :)
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.62.0"
    }
  }
}

# download the required azure library
# if running in automated process, account details go here
provider "azurerm" {
  features {}
}

# our resource group! where all of our things will land
resource "azurerm_resource_group" "rg" {
  name = "my-resource-group"
  location = "eastus2"
}