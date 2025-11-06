module "aws_record" {
  source = "./modules/aws_record"
  count  = var.provider == "aws" ? 1 : 0

  zone_id         = var.zone_id
  name            = var.name
  type            = var.type
  ttl             = var.ttl
  records         = var.records
  allow_overwrite = var.allow_overwrite
  priority        = var.priority
}

module "cf_record" {
  source = "./modules/cf_record"
  count  = var.provider == "cloudflare" ? 1 : 0

  zone_id  = var.zone_id
  name     = var.name
  type     = var.type
  ttl      = var.ttl
  records  = var.records
  proxied  = var.proxied
  priority = var.priority
}
