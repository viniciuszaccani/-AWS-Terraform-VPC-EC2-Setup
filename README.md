# Terraform AWS Infrastructure Setup

Este repositório contém um código em Terraform para configurar a infraestrutura básica de uma aplicação na AWS, incluindo subnets, zonas de disponibilidade e uma instância EC2.

## Funcionalidades

- **Gerenciamento de Subnets**:
  - Configura subnets públicas e privadas.
  - Associa subnets a Zonas de Disponibilidade (AZs) para maior resiliência.

- **Instância EC2**:
  - Criação de uma instância EC2 baseada na AMI `ami-830c94e3`.
  - Configuração de tags para identificação.

- **Customização**:
  - Configuração da VPC e subnets através da variável `vpc_configuration`.

## Estrutura do Código

- **`locals`**:
  - Define listas organizadas de subnets públicas e privadas.
  - Vincula subnets às Zonas de Disponibilidade.

- **Provedor AWS**:
  - Configuração da região `us-west-2`.
  - Recuperação de zonas de disponibilidade disponíveis.

- **Recursos**:
  - Instância EC2: Criação de uma máquina virtual na AWS com configurações básicas.

- **Variáveis**:
  - `vpc_configuration`: Configuração da VPC e subnets, com valores padrão incluídos.

## Pré-requisitos

- Terraform versão `>= 1.2.0`.
- Conta AWS com permissões para criar subnets, instâncias EC2 e acessar zonas de disponibilidade.
