terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
  /*backend "azurerm" {
    resource_group_name  = "RG_infra"
    storage_account_name = "storageinfrassx"                    
    container_name       = "terraform-state"                    
    key                  = "terraform.tfstate"     
  
  }
  */
}

provider "azurerm" {
  subscription_id = "3b320a7e-555b-4ef4-8b4b-e6ea28e0828e"
  features {}
}


