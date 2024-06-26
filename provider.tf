terraform {
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = ">=1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}