resource "aws_route53_record" "dns_record_aws" {
  count = var.target_platform == "aws" ? 1 : 0

  zone_id = data.aws_route53_zone.selected_aws.zone_id

  name    = var.record_name
  type    = var.record_type
  ttl     = 300
  records = [var.record_value]
}

resource "cloudflare_record" "name" {
  count = var.target_platform == "cloudflare" ? 1 : 0

  zone_id = data.cloudflare_zone.selected_cf.zone_id

  name    = var.record_name
  type    = var.record_type
  ttl     = 10
  value   = var.record_value
  proxied = true
}
