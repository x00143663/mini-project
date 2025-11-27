variable "db_container_name" {
  type        = string
  description = "Numele containerului PostgreSQL"
  default     = "mini-postgres"
}

variable "db_name" {
  type        = string
  description = "Numele bazei de date"
  default     = "mydb"
}

variable "db_user" {
  type        = string
  description = "Utilizatorul DB"
  default     = "appuser"
}

variable "db_password" {
  type        = string
  description = "Parola utilizatorului DB"
  default     = "secret"
}

variable "db_port" {
  type        = number
  description = "Portul local pe care expunem PostgreSQL"
  default     = 5433
}

variable "app_container_name" {
  type        = string
  description = "Numele containerului Flask"
  default     = "mini-flask-app"
}

variable "app_port" {
  type        = number
  description = "Portul local pe care expunem aplicatia Flask"
  default     = 5000
}

