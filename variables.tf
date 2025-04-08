variable "region" {
  description = "The AWS region to create resources in."
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "EC2 Instance type"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 Instance name"
  default     = "ec2_devops_project_mb"
}

variable "key_pair_name" {
  type    = string
  default = "App"
}

variable "vpc_name" {
  description = "VPC name"
  default     = "vpc_devops_project_mb"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "List of Availabilty Zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "vpc_private_subnets" {
  description = "List of Private Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "List of Public Subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "security_group" {
  description = "Name of Security Group"
  default     = "sg_devops_project_mb"
}

variable "ami_id" {
  description = "Ami ID"
  default     = "ami-03250b0e01c28d196"
}
