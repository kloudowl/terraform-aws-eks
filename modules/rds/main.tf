# setup with Aurora Serverless v2 (PostgreSQL 13)
module "cluster" {
  source  = "terraform-aws-modules/rds-aurora/aws"
  version = "~> 7.6.0"

  name              = "illumidesk-rds-postgresqlv2"
  engine            = data.aws_rds_engine_version.postgresql.engine
  engine_mode       = "provisioned"
  engine_version    = data.aws_rds_engine_version.postgresql.version
  storage_encrypted = true

  vpc_id                = var.vpc_id
  subnets               = var.database_subnets
  create_security_group = true
  allowed_cidr_blocks   = var.private_subnets_cidr_blocks

  monitoring_interval = 60

  apply_immediately   = true
  skip_final_snapshot = true

  db_parameter_group_name         = aws_db_parameter_group.main.id
  db_cluster_parameter_group_name = aws_rds_cluster_parameter_group.main.id

  serverlessv2_scaling_configuration = {
    min_capacity = 2
    max_capacity = 5
  }

  instance_class = var.rds_instance_class
  instances = {
    one = {}
    two = {}
  }
}

resource "aws_db_parameter_group" "main" {
  name        = "illumidesk-aurora-db-postgres13-parameter-group"
  family      = var.rds_parameter_group_family
  description = "illumidesk-aurora-db-postgres13-parameter-group"
  tags        = var.tags
}

resource "aws_rds_cluster_parameter_group" "main" {
  name        = "illumidesk-aurora-postgres13-cluster-parameter-group"
  family      = var.rds_parameter_group_family
  description = "illumidesk-aurora-postgres13-cluster-parameter-group"
  tags        = var.tags
}
