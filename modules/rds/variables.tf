variable "allowed_security_groups" {
  description = "Security groups allowed to access the RDS Aurora cluster"
  type        = list(string)
  default     = []
}

variable "rds_engine_mode" {
  description = "RDS Aurora engine mode"
  type        = string
  default     = "provisioned"
}

variable "rds_engine_version" {
  description = "RDS Aurora engine version"
  type        = string
  default     = ""
}

variable "rds_instance_class" {
  description = "RDS Aurora instance class"
  type        = string
  default     =  "db.serverless"
}

variable "rds_parameter_group_family" {
  description = "RDS Aurora parameter group family"
  type        = string
  default     = "aurora-postgresql13"
}

variable "database_subnets" {
  description = "Database subnets"
  type        = list(string)
  default     = []
}

variable "db_subnet_group_name" {
  description = "RDS Aurora database subnet group name"
  type        = string
  default     = "illumidesk-rds-subnet-group"
}

variable "private_subnets_cidr_blocks" {
  description = "CIDR blocks allowed to access the RDS Aurora cluster"
  type        = list(string)
  default     = []
}

variable "master_username" {
  description = "Database subnets"
  type        = string
  default     = "illumidesk"
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {
    Name    = "illumidesk-eks"
    Environment = "dev"
  }
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     =  ""
}
