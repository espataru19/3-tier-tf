variable "vpc_id" {
  description = "VPC ID"
}

variable "public_subnets" {
  description = "Public Subnet IDs"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID for Web Tier EC2 Instances"
  default     = "ami-0c55b159cbfaffde2"  # Amazon Linux 2
}

variable "instance_type" {
  description = "Instance type for Web Tier"
  default     = "t2.micro"
}
