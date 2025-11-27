terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Modul PostgreSQL - creează imaginea, volumul și containerul

resource "docker_image" "postgres" {
  name         = "postgres:16"
  keep_locally = false
}

# Named volume pentru datele DB (persistență)
resource "docker_volume" "pgdata" {
  name = "${var.container_name}-data"
}

resource "docker_container" "postgres" {
  name  = var.container_name
  image = docker_image.postgres.name

  env = [
    "POSTGRES_DB=${var.db_name}",
    "POSTGRES_USER=${var.db_user}",
    "POSTGRES_PASSWORD=${var.db_password}"
  ]

  ports {
    internal = 5432
    external = var.port
  }

  # Montăm volume-ul în /var/lib/postgresql/data
  volumes {
    volume_name    = docker_volume.pgdata.name
    container_path = "/var/lib/postgresql/data"
  }
}

