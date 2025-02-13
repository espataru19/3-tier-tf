variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "db_username" {
  description = "Username for RDS"
  default     = "admin"
}

variable "db_password" {
  description = "Password for RDS"
  type        = string
  sensitive   = true
}


