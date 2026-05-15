variable "container_name" {
  description = "Docker container name"

  type = string

  default = "terraform-nginx"
}

variable "external_port" {
  description = "Host port"

  type = number

  default = 8090
}

