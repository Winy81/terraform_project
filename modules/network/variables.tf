variable "vpc_cidr" {
  description = "CIDR block used by the VPC"
  type        = string
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "subnets" {
  description = "Public and private subnet configuration by Availability Zone"

  type = map(object({
    availability_zone  = string
    public_cidr        = string
    private_cidr       = string
  }))
}
