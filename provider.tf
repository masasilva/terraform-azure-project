provider "azurerm" {
  features {}
}

# Definição do ambiente de autenticação do Azure
provider "azurerm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}
