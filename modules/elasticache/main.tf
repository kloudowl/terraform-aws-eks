resource "aws_security_group" "main" {
  name_prefix = "illumidesk-elasticache-cluster"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_elasticache_subnet_group" "main" {
  name       = "illumidesk-elasticache-cluster-subnet"
  subnet_ids = var.elasticache_subnets
}

resource "aws_elasticache_replication_group" "main" {
  replication_group_id       = "illumidesk-elasticache-cluster"
  description                = "illumidesk redis elasticache cluster"
  node_type                  = var.elasticache_node_type
  port                       = 6379
  subnet_group_name          = aws_elasticache_subnet_group.main.name
  parameter_group_name       = var.parameter_group_name
  automatic_failover_enabled = true

  num_node_groups         = 1
  replicas_per_node_group = 1
}