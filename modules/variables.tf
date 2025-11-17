variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "target_platform" {
  description = "DNS platform to use ('AWS' or 'cloudflare')"
  type        = string
}

variable "record_name" {
  description = "DNS name"
  type        = string
}

variable "record_type" {
  description = "DNS type"
  type        = string
}

variable "record_value" {
  default = "DNS record value"
  type    = string
}

variable "aws_zone_id" {
  description = "AWS Route53 Zone ID"
  type        = string
  default     = ""
}
