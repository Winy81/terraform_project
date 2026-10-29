output "vpc_id" {
  description = "ID of the VPC created by the network module"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs by Availability Zone"
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs by Availability Zone"
  value       = module.network.private_subnet_ids
}
