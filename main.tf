terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Aici apelăm modulul pentru PostgreSQL
module "db" {
  source = "./modules/postgres"

  container_name = var.db_container_name
  db_name        = var.db_name
  db_user        = var.db_user
  db_password    = var.db_password
  port           = var.db_port
}

module "app" {
  source = "./modules/flask"

  container_name = var.app_container_name
  app_port       = var.app_port

  # Legăm app-ul de aceleași valori DB ca modulul postgres
  db_host     = "host.docker.internal"
  db_port     = var.db_port
  db_name     = var.db_name
  db_user     = var.db_user
  db_password = var.db_password
}

