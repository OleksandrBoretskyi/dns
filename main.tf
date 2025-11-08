module "dns_deployment" {
  source = "./modules"
  target_platform = var.target_platform
  domain_name = var.domain_name
  record_name     = var.record_name
  record_type     = var.record_type
  record_value    = var.record_value
}