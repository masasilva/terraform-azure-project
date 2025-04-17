# Terraform Azure Project

Este projeto utiliza o Terraform para provisionar recursos no Azure. Ele cria uma rede virtual, uma sub-rede e uma máquina virtual.

## Estrutura

- `main.tf`: Arquivo principal que chama os módulos.
- `modules/`: Contém os módulos reutilizáveis para a criação de recursos.
- `variables.tf`: Definição de variáveis.
- `outputs.tf`: Definição de outputs.
- `terraform.tfvars`: Definições específicas do ambiente.

## Como Usar

1. Clone o repositório.
2. Crie um arquivo `terraform.tfvars` com suas variáveis.
3. Execute os comandos:

```bash
terraform init
terraform plan
terraform apply
