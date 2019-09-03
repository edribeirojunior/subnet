# Módulo Terraform - google - subnet

Módulo do Terraform para provisionamento do recursos de Subnet.

## Uso

```hcl
module "subnet" {
  source = "git::ssh://git@example.com/terraform-modules/gcp/subnet.git?ref=v0.0.1"

  project_id              = "id-projeto"
  name                    = "subnet-teste"
  subnet_region           = "southamerica-east1"
  vpc_name                = "nome-vpc"
  ip_cidr_range           = "192.168.10.0/24"
  secondary_ip_range_name = "secondary-range"
  secondary_ip_cidr       = "192.168.11.0/24"
}
```

## Recursos provisionados

- VPC Subnet


## Customizações

<!-- TODO: ajustar exemplo de customização conforme necessário. -->

## Exemplos

<!-- TODO: alterar título e link abaixo conforme diretório de exemplo criado. -->
- [Exemplo simples](examples/simple-example/)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ip\_cidr\_range | Range da subnet | string | n/a | yes |
| name | Nome da subnet | string | n/a | yes |
| project\_id | Id do projeto em que a subnet será criada | string | n/a | yes |
| secondary\_ip\_cidr | CIDR para o Ip secundario | string | n/a | yes |
| secondary\_ip\_range\_name | Nome do range de Ip secundario | string | n/a | yes |
| subnet\_region | Região que a subnet será criada | string | n/a | yes |
| vpc\_name | Nome da VPC onde a subnet será criada | string | n/a | yes |
| private\_ip\_google\_access | Maquinas com IP privado conseguem interagir com os recursos via API | string | `"true"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cidr\_block | CIDR da subnet |
| id | ID da Subnet |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Licença

Copyright © 2019 Mandic Cloud Solutions. Todos os direitos reservados.
