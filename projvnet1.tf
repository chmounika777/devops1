resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
}
resource "azurerm_virtual_network" "example" {
  name                = var.vnet
  location            = var.loc
  resource_group_name = var.rgname
  address_space       = var.vnetadd  #["10.0.0.0/16"]

  subnet {
    name           = var.subnet
    address_prefix = var.subnetadd    #"10.0.1.0/24"
  }

}
resource "azurerm_public_ip" "example" {
  name                = "pip1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "dev"
  }
}
