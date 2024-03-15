variable "cloudflare_zone_id" {
  type = string
}

variable "ingress_ip" {
  type = string
}

variable "comment" {
  default = "Managed by Terraform"
  type    = string
}
