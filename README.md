3-Tier Architecture on AWS using Terraform
This project provisions a 3-tier architecture on AWS using Terraform. The setup includes:

VPC Module: Creates the VPC, public and private subnets, and necessary routing.
Web Tier: Auto Scaling Group with EC2 instances behind an Application Load Balancer (ALB).
App Tier: Private EC2 instances for application logic.
DB Tier: RDS instance with Multi-AZ support for high availability.
Remote State: S3 bucket and DynamoDB for state management and locking.
Architecture Overview

Public Subnets: Host the ALB for internet-facing traffic.
Private Subnets: Separate subnets for App and DB tiers, enhancing security.
Security Groups: Control traffic flow between tiers.
Prerequisites
Ensure you have the following tools installed:

Terraform (v1.0.0 or later)
AWS CLI
An AWS Account with IAM permissions for VPC, EC2, ALB, and RDS.
Configured AWS credentials using aws configure or environment variables
