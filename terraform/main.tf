terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

module "nginx_container" {
  source = "./modules/nginx"

  container_name = "smart-nginx"

  external_port = 8088
}