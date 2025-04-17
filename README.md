# Terraform Azure Project

Este projeto utiliza o Terraform para provisionar recursos no Azure. Ele cria uma rede virtual, uma sub-rede e uma máquina virtual.

terraform-azure-project/
│
├── modules/               # Módulos reutilizáveis (ex: VNet, VM, etc.)
│   ├── vnet/              # Módulo para criação de rede virtual
│   ├── vm/                # Módulo para criação de máquina virtual
│
├── environments/          # Ambientes específicos (dev, staging, prod)
│   ├── dev/               # Configurações para ambiente de desenvolvimento
│   ├── prod/              # Configurações para ambiente de produção
│
├── main.tf                # Arquivo principal de configuração do Terraform
├── variables.tf           # Definição de variáveis
├── outputs.tf             # Definição de outputs
├── terraform.tfvars       # Arquivo de variáveis específicas do ambiente
├── provider.tf            # Configuração do provedor Azure
└── README.md              # Documentação do repositório


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
