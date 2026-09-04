variable "resource_group_name" {
  type        = string
  description = "Nome do Resource Group"
}

variable "location" {
  type        = string
  default     = "brazilsouth"
  description = "Regiao do Azure"
}

variable "prefix" {
  type        = string
  default     = "labcicd"
  description = "Prefixo para nomes unicos dos recursos"
}

variable "environment" {
  type        = string
  description = "Identificador do ambiente (ex: stg, prd)"
}
