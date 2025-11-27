output "db_container_name" {
  description = "Containerul PostgreSQL creat"
  value       = module.db.container_name
}

output "db_address" {
  description = "Adresa la care e accesibil PostgreSQL"
  value       = "localhost:${module.db.port}"
}

output "app_container_name" {
  description = "Containerul Flask creat"
  value       = module.app.container_name
}

output "app_url" {
  description = "URL-ul la care este accesibila aplicatia"
  value       = "http://localhost:${module.app.port}"
}

