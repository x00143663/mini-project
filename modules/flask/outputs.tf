output "container_name" {
  value = docker_container.app.name
}

output "port" {
  value = docker_container.app.ports[0].external
}

