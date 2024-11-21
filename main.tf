provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.10.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform-state"
    storage_account_name = "lukesterraformstate"
    container_name       = "lukesterraformstate"
    key                  = "terraform.tfstate"
  }
}
