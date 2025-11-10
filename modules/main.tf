resource "aws_route53_record" "dns_record_aws" {
  count = lower(var.target_platform) == "aws" ? 1 : 0

  zone_id = data.aws_route53_zone.selected.zone_id

  name    = var.record_name
  type    = var.record_type
  ttl     = 300
  records = [var.record_value]
}

resource "cloudflare_dns_record" "name" {
  count = lower(var.target_platform) == "cloudflare" ? 1 : 0

  zone_id = var.cloudflare_zone_id

  name    = var.record_name
  type    = var.record_type
  ttl     = 1
  content = var.record_value
  proxied = true
}
