variable "backup_plan_name" {
  description = "Value for the aws_backup_plan resource name"
  type = string
  default = "illumidesk-plan"
}

variable "backup_plan_rule_name" {
  description = "Value for the backup plan rule name"
  type = string
  default = "illumidesk-backup-rule"
}

variable "backup_role_name" {
  description = "Value for the backup role name"
  type = string
  default = "illumidesk-backup"
}

variable "backup_selection_name" {
  description = "Value for the backup selection name"
  type = string
  default = "illumidesk-selection"
}

variable "backup_vault_name" {
  description = "Value for the aws_backup_vault resource name"
  type = string
  default = "illumidesk-vault"
}

variable "bucket_arn_media" {
  description = "Value for the media bucket arn"
  type = string
  default = ""
}

variable "bucket_arn_static" {
  description = "Value for the static bucket arn"
  type = string
  default = ""
}

variable "database_arn" {
  description = "Value for the static bucket arn"
  type = string
  default = ""
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {
    Name    = "illumidesk-eks"
    Environment = "dev"
  }
}
