terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
}

provider "azurerm" {
  features {}
}


## Terraform State State Storage ##
terraform {
  backend "azurerm" {
    resource_group_name  = "aks-storage-RG-uk west"
    storage_account_name = "tfstate8018"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    sas_token = "?sv=2017-07-29&ss=b&srt=sco&sp=rwdlac&se=2024-06-08T21:55:43Z&st=2022-06-09T21:55:43Z&spr=https&sig=hEblXAjrtvFsj%2Bwa3uuo9opKB18Tuj%2BcKHlvkGkPHtY%3D"
  }
}
