variable "container_name" {
  type        = string
  description = "Flask container name"
}

variable "app_port" {
  type        = number
  description = "Flask application port"
}

variable "db_host" {
  type        = string
  description = "The PostgreSQL host to which the app is connecting"
}

variable "db_port" {
  type        = number
  description = "PostgreSQL port"
}

variable "db_name" {
  type        = string
  description = "DB name"
}

variable "db_user" {
  type        = string
  description = "DB user"
}

variable "db_password" {
  type        = string
  description = "DB password"
}

