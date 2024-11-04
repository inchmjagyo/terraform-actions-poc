terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.6"
    }
  }

  backend "azurerm" {
      resource_group_name  = "demo-core-1"
      storage_account_name = "democore"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}
