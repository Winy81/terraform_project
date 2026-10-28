variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed"
  type        = string
}

variable "project_name" {
  description = "Name used to identify project resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnets" {
  description = "Public and private subnet configuration by Availability Zone"

  type = map(object({
    availability_zone = string
    public_cidr       = string
    private_cidr      = string
  }))
}
