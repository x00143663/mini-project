variable "container_name" {
  type        = string
  description = "PostgreSQL container name"
}

variable "db_name" {
  type        = string
  description = "Database name"
}

variable "db_user" {
  type        = string
  description = "Database user"
}

variable "db_password" {
  type        = string
  description = "Database password"
}

variable "port" {
  type        = number
  description = "Local port exposed for PostgreSQL"
}

