locals {
  name_prefix   = "${var.prefix_environment_name}-"
  zone_name     = var.zone_name
  main_host     = var.prefix_environment_name == "prod" ? "app.${local.zone_name}" : "app-${var.prefix_environment_name}.${local.zone_name}"
  custom_domain = "auth.${local.main_host}"

  global = {
    name_formats = {
      aws_ssm_parameter = format("/%sillumidesk/%%s", lower(local.name_prefix))
    }
  }
}