output "aws_backup_plan_id" {
  value = aws_backup_plan.main.id
}

output "aws_backup_vault_id" {
  value = aws_backup_vault.main.id
}

output "aws_backup_selection_id" {
  value = aws_backup_selection.main.id
}

output "aws_backup_role_arn" {
  value = aws_iam_role.backup.arn
}
