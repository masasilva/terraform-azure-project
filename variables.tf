variable "client_id" {
  description = "ID do cliente do Azure"
  type        = string
}

variable "client_secret" {
  description = "Segredo do cliente do Azure"
  type        = string
}

variable "tenant_id" {
  description = "ID do tenant do Azure"
  type        = string
}

variable "subscription_id" {
  description = "ID da subscrição do Azure"
  type        = string
}

variable "region" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "East US"
}

variable "vm_size" {
  description = "Tamanho da máquina virtual"
  type        = string
  default     = "Standard_B1ms"
}
