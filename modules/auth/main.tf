resource "auth0_client" "default" {
  name                = var.auth_client_name
  description         = var.auth_client_description
  app_type            = "regular_web"
  logo_uri            = "https://content.${var.zone_name}/img/v2/icon.png"
  callbacks           = ["https://${var.main_host}/auth/login", "https://${var.main_host}/_platform/docs/v1/swagger/", "https://${var.main_host}/_platform/docs/v1/redoc/", "http://localhost:8000/auth/login"]
  allowed_logout_urls = ["https://${var.main_host}/", "http://localhost:8000/"]
  web_origins         = ["https://${var.main_host}/", "http://localhost:8000/"]
  initiate_login_uri  = "https://${var.main_host}/"
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