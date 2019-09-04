variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
}

variable "secondary_ranges" {
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  description = "Secondary ranges that will be used in some of the subnets"
}


variable "project_id" {
  description = "Id do projeto em que a subnet será criada"
}

variable "vpc_name" {
  description = "Nome da VPC onde a subnet será criada"
}

variable "private_ip_google_access" {
  description = "Maquinas com IP privado conseguem interagir com os recursos via API"
  default     = true
}
