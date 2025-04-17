output "resource_group_name" {
  description = "Nome do Resource Group criado"
  value       = azurerm_resource_group.rg.name
}

output "vnet_name" {
  description = "Nome da Virtual Network"
  value       = module.vnet.vnet_name
}

output "vnet_id" {
  description = "ID da Virtual Network"
  value       = module.vnet.vnet_id
}

output "subnet_id" {
  description = "ID da Subnet"
  value       = module.vnet.subnet_id
}

output "vm_name" {
  description = "Nome da máquina virtual criada"
  value       = module.vm.vm_name
}

output "vm_private_ip" {
  description = "Endereço IP privado da VM"
  value       = module.vm.vm_private_ip
}

output "vm_public_ip" {
  description = "Endereço IP público da VM"
  value       = module.vm.vm_public_ip
}
