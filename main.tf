terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Here we call the module for PostgreSQL
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

  # We bind the app to the same DB values ​​as the postgres module
  db_host     = "host.docker.internal"
  db_port     = var.db_port
  db_name     = var.db_name
  db_user     = var.db_user
  db_password = var.db_password
}

