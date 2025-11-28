output "db_container_name" {
  description = "PostgreSQL container created"
  value       = module.db.container_name
}

output "db_address" {
  description = "The address where PostgreSQL is accessible"
  value       = "localhost:${module.db.port}"
}

output "app_container_name" {
  description = "Flask container created"
  value       = module.app.container_name
}

output "app_url" {
  description = "The URL at which the application is accessible"
  value       = "http://localhost:${module.app.port}"
}

