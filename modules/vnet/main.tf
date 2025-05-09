resource "azurerm_virtual_network" "vnet" {
  name                = "my-vnet"
  location            = var.region
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "my-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}
