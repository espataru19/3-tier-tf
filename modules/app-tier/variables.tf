variable "vpc_id" {
  description = "VPC ID"
}

variable "private_subnets" {
  description = "Private Subnet IDs for App Tier"
  type        = list(string)
}

variable "web_sg_id" {
  description = "Security Group ID of Web Tier"
}

variable "ami_id" {
  description = "AMI ID for App Tier EC2 Instances"
  default     = "ami-0c55b159cbfaffde2"  # Amazon Linux 2
}

variable "instance_type" {
  description = "Instance type for App Tier"
  default     = "t2.micro"
}

