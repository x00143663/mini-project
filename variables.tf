variable "db_container_name" {
  type        = string
  description = "PostgreSQL container name"
  default     = "mini-postgres"
}

variable "db_name" {
  type        = string
  description = "DB name"
  default     = "mydb"
}

variable "db_user" {
  type        = string
  description = "DB user"
  default     = "appuser"
}

variable "db_password" {
  type        = string
  description = "DB user password"
  default     = "secret"
}

variable "db_port" {
  type        = number
  description = "The local port on which we expose PostgreSQL"
  default     = 5433
}

variable "app_container_name" {
  type        = string
  description = "Flask container name"
  default     = "mini-flask-app"
}

variable "app_port" {
  type        = number
  description = "The local port on which we expose the Flask application"
  default     = 5000
}

