provider "azurerm" {
  features {}

  client_id       = "7ccee74e-c44f-4262-89ea-2a2469ec24ad"
  client_secret   = "mYd8Q~dFOsBiVLJ.KgwFM37DBxoH_ihJWEXrCbTp"
  tenant_id       = "d7fb742f-d10b-4061-a0d5-c1b8cb9ebf94"
  subscription_id = "6f89aae8-3687-4899-a425-7f7e90aec38a"
}
terraform {
  backend "azurerm" {
   
    storage_account_name = "saaccount11"
    container_name       = "container1"
    key                  = "terraform.tfstate"
     
  }
}

