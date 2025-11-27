variable "container_name" {
  type        = string
  description = "Numele containerului PostgreSQL"
}

variable "db_name" {
  type        = string
  description = "Numele bazei de date"
}

variable "db_user" {
  type        = string
  description = "Utilizatorul bazei de date"
}

variable "db_password" {
  type        = string
  description = "Parola pentru baza de date"
}

variable "port" {
  type        = number
  description = "Portul local expus pentru PostgreSQL"
}

