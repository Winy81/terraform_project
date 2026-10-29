output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs by Availability Zone"

  value = {
    for key, subnet in aws_subnet.public :
    key => subnet.id
  }
}

output "private_subnet_ids" {
  description = "Private subnet IDs by Availability Zone"

  value = {
    for key, subnet in aws_subnet.private :
    key => subnet.id
  }
}
