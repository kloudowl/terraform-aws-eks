resource "aws_iam_role" "backup" {
  name               = var.backup_role_name
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["sts:AssumeRole"],
      "Effect": "allow",
      "Principal": {
        "Service": ["backup.amazonaws.com"]
      }
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "backup" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup"
  role       = aws_iam_role.backup.name
}

resource "aws_iam_role_policy_attachment" "restore" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForRestores"
  role       = aws_iam_role.backup.name
}

resource "aws_iam_role_policy_attachment" "backup-s3" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBackupServiceRolePolicyForS3Backup"
  role       = aws_iam_role.backup.name
}

resource "aws_backup_vault" "main" {
  name = var.backup_vault_name
}

resource "aws_backup_plan" "main" {
  name = var.backup_plan_name

  rule {
    rule_name         = format("%s_backup_rule", var.backup_role_name)
    target_vault_name = aws_backup_vault.main.name
    schedule          = "cron(0 8 * * ? *)"
    start_window      = 60
    completion_window = 120

    lifecycle {
      delete_after = 30
    }
  }
}

resource "aws_backup_selection" "main" {
  iam_role_arn = aws_iam_role.backup.arn
  name         = var.backup_selection_name
  plan_id      = aws_backup_plan.main.id

  resources = [
    var.bucket_arn_media,
    var.bucket_arn_static,
    var.database_arn,
  ]
}
