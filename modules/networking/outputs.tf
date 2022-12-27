output "azs" {
  description = "AZs for the VPC"
  value       = data.aws_availability_zones.available.names
}

output "intra_subnets" {
  description = "Subnets for internal communication"
  value       = module.vpc.intra_subnets
}

output "private_subnets" {
  description = "Private subnets"
  value = module.vpc.private_subnets
}

output "public_subnets" {
  description = "Public subnets"
  value = module.vpc.public_subnets
}

output "remote_access_security_group_id" {
  description = "Security group ID for remote access"
  value = aws_security_group.remote_access.id
}

output "vpc_id" {
  description = "VPC ID"
  value = module.vpc.vpc_id
}
