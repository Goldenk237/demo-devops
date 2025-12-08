terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "null_resource" "remove_old_container" {
  provisioner "local-exec" {
    command = "docker rm -f demo-devops || true"
  }
}

resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}

resource "docker_container" "site" {
  name  = "demo-devops"
  image = docker_image.nginx.image_id

  depends_on = [null_resource.remove_old_container]  # ← Supprime l'ancien avant de créer

  ports {
    internal = 80
    external = 8080
  }

  volumes {
    host_path      = "D:/tp_repository/demo-devops"
    container_path = "/usr/share/nginx/html"
    read_only      = true
  }

  restart = "unless-stopped"
}
