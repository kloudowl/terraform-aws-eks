variable "allowed_security_groups" {
  description = "Security groups allowed to access the Elasticache cluster"
  type        = list(string)
  default     = []
}

variable "private_subnets_cidr_blocks" {
  description = "CIDR blocks allowed to access the Elasticache cluster"
  type        = list(string)
  default     = []
}

variable "elasticache_subnets" {
  description = "Elasticache subnets"
  type        = list(string)
  default     = []
}

variable "elasticache_engine" {
  description = "Elasticache engine"
  type        = string
  default     =  "redis"
}

variable "elasticache_subnet_group_name" {
  description = "Elasticache subnet group name"
  type        = string
  default     = "illumidesk-elasticache-subnet-group"
}

variable "engine_version" {
  description = "Elasticache engine version"
  type        = string
  default     =  "7.0"
}

variable "elasticache_node_type" {
  description = "Elasticache node type"
  type        = string
  default     =  "cache.t4g.micro"
}

variable "node_groups" {
  description = "Number of nodes groups to create in the cluster"
  type        = number
  default     = 1
}

variable "num_cache_nodes" {
  description = "Number of cache nodes"
  type        = number
  default     =  1
}

variable "parameter_group_name" {
  description = "Elasticache parameter group name"
  type        = string
  default     =  "default.redis7"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     =  ""
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {
    Name    = "illumidesk-elastiache"
    Environment = "dev"
  }
}