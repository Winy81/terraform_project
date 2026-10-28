output "vpc_id" {
  description = "ID of the VPC created by the network module"
  value       = module.network.vpc_id
}
