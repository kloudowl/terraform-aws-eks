output "cluster_master_username" {
    value       = module.cluster.cluster_master_username
    description = "The master username for the RDS cluster"
}

output "cluster_master_password" {
    value       = module.cluster.cluster_master_password
    description = "The master password for the RDS cluster"
}
