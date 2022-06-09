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
    storage_account_name = "tfstate9400"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    sas_token = "?sv=2017-07-29&ss=b&srt=sco&sp=rwdlac&se=2024-06-07T10:54:55Z&st=2022-06-08T10:54:55Z&spr=https&sig=9G2HkooEz8nGfY4EmazVwwgFH5wrlGDAf18WK3Po6fk%3D"
  }
}
