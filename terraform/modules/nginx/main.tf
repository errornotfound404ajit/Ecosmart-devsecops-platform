terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

resource "docker_container" "nginx" {
  name  = var.container_name

  image = "nginx"

  ports {
    internal = 80
    external = var.external_port
  }
}