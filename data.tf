data "auth0_client" "default" {
  name = auth0_client.default.name
}

data "aws_route53_zone" "default" {
  name = local.zone_name
}
