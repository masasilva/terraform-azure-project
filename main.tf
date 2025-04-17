module "vnet" {
  source = "./modules/vnet"

  region = var.region
}

module "vm" {
  source       = "./modules/vm"
  region       = var.region
  vm_size      = var.vm_size
  vnet_id      = module.vnet.vnet_id
}

output "vm_public_ip" {
  value = module.vm.vm_public_ip
}
