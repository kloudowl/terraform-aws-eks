resource "auth0_tenant" "default" {
  friendly_name           = "IllumiDesk Tenant (${var.prefix_environment_name})"
  picture_url             = "https://content.${local.zone_name}/img/v2/icon.png"
  support_email           = var.support_email
  support_url             = var.support_url
  allowed_logout_urls     = ["https://${var.main_host}/", "http://localhost:8000/"]
  session_lifetime        = 8760
  sandbox_version         = "12"
  enabled_locales         = ["en"]
  default_redirection_uri = "https://${var.main_host}/"

  session_cookie {
    mode = "non-persistent"
  }

  universal_login {
    colors {
      primary         = "#1D923B"
      page_background = "#ffffff"
    }
  }

  flags {
    universal_login                        = true
    disable_clickjack_protection_headers   = true
    enable_public_signup_user_exists_error = true
    use_scope_descriptions_for_consent     = true
    no_disclose_enterprise_connections     = false
    disable_management_api_sms_obfuscation = false
    disable_fields_map_fix                 = false
  }
}

resource "auth0_branding" "default" {
  logo_url = "https://content.${local.zone_name}/img/v2/icon.png"

  colors {
    primary         = "#1D923B"
    page_background = "#ffffff"
  }
}

resource "auth0_custom_domain" "default" {
  domain = var.auth_custom_domain
  type   = "auth0_managed_certs"
}

resource "auth0_custom_domain_verification" "default" {
  custom_domain_id = auth0_custom_domain.default.id
  timeouts { create = "15m" }
  depends_on = [
    aws_route53_record.default
  ]
}

resource "aws_route53_record" "default" {
  allow_overwrite = true
  ttl             = 600
  zone_id         = data.aws_route53_zone.default.zone_id
  type            = upper(auth0_custom_domain.default.verification[0].methods[0].name)
  name            = "${auth0_custom_domain.default.domain}."
  records         = ["${auth0_custom_domain.default.verification[0].methods[0].record}."]
}
