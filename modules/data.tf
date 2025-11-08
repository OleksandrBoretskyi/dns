data "aws_route53_zone" "selected" {
  name = "${var.domain_name}."
  private_zone = false
}

data "cloudflare_zone" "selected" {
  filter {
    name = var.domain_name
  }
}