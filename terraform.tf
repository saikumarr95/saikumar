terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.95.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  /* cloud {
    organization = "terraform_sai"

    workspaces {
      name = "terraformTest_sai"
    
    }
    
  }
  */
}