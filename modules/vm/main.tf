resource "azurerm_linux_virtual_machine" "vm" {
  name                = "my-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.region
  size                = var.vm_size
  admin_username      = "azureuser"
  admin_password      = "P@ssw0rd123!"
  network_interface_ids = [azurerm_network_interface.nic.id]
  image_id            = "UbuntuLTS"

  tags = {
    environment = "dev"
  }
}

resource "azurerm_network_interface" "nic" {
  name                = "my-nic"
  location            = var.region
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = azurerm_subnet.subnet.id
  private_ip_address  = "10.0.1.4"
}

output "vm_public_ip" {
  value = azurerm_public_ip.vm_ip.ip_address
}
