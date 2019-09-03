variable "secondary_ip_range_name" {
  description = "Nome do range de Ip secundario"
}

variable "secondary_ip_cidr" {
  description = "CIDR para o Ip secundario"
}

variable "project_id" {
  description = "Id do projeto em que a subnet será criada"
}

variable "name" {
  description = "Nome da subnet"
}

variable "subnet_region" {
  description = "Região que a subnet será criada"
}

variable "vpc_name" {
  description = "Nome da VPC onde a subnet será criada"
}

variable "ip_cidr_range" {
  description = "Range da subnet"
}

variable "private_ip_google_access" {
  description = "Maquinas com IP privado conseguem interagir com os recursos via API"
  default     = true
}
