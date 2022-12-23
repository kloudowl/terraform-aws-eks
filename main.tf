provider "aws" {
  region = var.aws_region
}

provider "auth0" {
  domain = var.auth_tenant_domain
  debug  = var.auth_debug
}

resource "auth0_client" "default" {
  name                = var.auth_client_name
  description         = var.auth_client_description
  app_type            = "regular_web"
  logo_uri            = "https://content.${var.zone_name}/img/v2/icon.png"
  callbacks           = ["https://${local.main_host}/auth/login", "https://${local.main_host}/_platform/docs/v1/swagger/", "https://${local.main_host}/_platform/docs/v1/redoc/", "http://localhost:8000/auth/login"]
  allowed_logout_urls = ["https://${local.main_host}/", "http://localhost:8000/"]
  web_origins         = ["https://${local.main_host}/", "http://localhost:8000/"]
  initiate_login_uri  = "https://${local.main_host}/"
  oidc_conformant     = true
  grant_types = [
    "authorization_code",
    "http://auth0.com/oauth/grant-type/password-realm",
    "implicit",
    "password",
    "refresh_token"
  ]

  refresh_token {
    rotation_type   = "rotating"
    expiration_type = "expiring"
    token_lifetime  = 3600
  }

  jwt_configuration {
    alg = "RS256"
  }
}

resource "auth0_tenant" "default" {
  friendly_name           = "IllumiDesk Tenant (${var.prefix_environment_name})"
  picture_url             = "https://content.${local.zone_name}/img/v2/icon.png"
  support_email           = var.support_email
  support_url             = var.support_url
  allowed_logout_urls     = ["https://${local.main_host}/", "http://localhost:8000/"]
  session_lifetime        = 8760
  sandbox_version         = "12"
  enabled_locales         = ["en"]
  default_redirection_uri = "https://${local.main_host}/"

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
  domain = var.auth_client_custom_domain
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
