variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "brazilsouth"
}

variable "prefix" {
  type    = string
  default = "labcicd"
}

variable "environment" {
  type = string
}
