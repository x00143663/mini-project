variable "container_name" {
  type        = string
  description = "Numele containerului Flask"
}

variable "app_port" {
  type        = number
  description = "Portul local expus pentru aplicatia Flask"
}

variable "db_host" {
  type        = string
  description = "Host-ul PostgreSQL la care se conecteaza aplicatia"
}

variable "db_port" {
  type        = number
  description = "Portul PostgreSQL"
}

variable "db_name" {
  type        = string
  description = "Numele bazei de date"
}

variable "db_user" {
  type        = string
  description = "Utilizatorul DB"
}

variable "db_password" {
  type        = string
  description = "Parola DB"
}

