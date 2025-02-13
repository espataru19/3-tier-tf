variable "vpc_id" {}
variable "private_subnets" { type = list(string) }
variable "app_sg_id" {}
variable "db_username" {}
variable "db_password" { sensitive = true }
