terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.6.0"
    }
  }

  backend "azurerm" {
      resource_group_name  = "az-ddc-weu-sa-npr-dxp-imports-core-001"
      storage_account_name = "azddcweusanprtfstate"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}
