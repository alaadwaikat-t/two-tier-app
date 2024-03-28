variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "aws_profile" {
  description = "AWS profile"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ami_id" {
  description = "EC2 AMI ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the NAT Gateway"
  type        = string
}

variable "cidr_block_us_east_1a" {
  description = "CIDR block for us-east-1a subnet"
  type        = string
}

variable "cidr_block_us_east_1b" {
  description = "CIDR block for us-east-1b subnet"
  type        = string
}

variable "db_password" {
  description = "The database password"
  type        = string
  sensitive   = true
}