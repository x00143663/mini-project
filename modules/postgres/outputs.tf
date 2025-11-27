output "container_name" {
  value = docker_container.postgres.name
}

output "port" {
  value = docker_container.postgres.ports[0].external
}

output "db_name" {
  value = var.db_name
}

output "db_user" {
  value = var.db_user
}

