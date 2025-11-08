variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "platform" {
  description = "DNS platform to use ('AWS' or 'cloudflare')"
  type        = string
}

variable "record_name" {
  description = "DNS name"
  type        = string
}

variable "record_value" {
  default = "DNS record value"
  type    = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
}