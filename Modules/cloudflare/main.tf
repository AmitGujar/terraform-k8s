terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

resource "cloudflare_record" "elastic" {
  zone_id = var.cloudflare_zone_id
  type    = "A"
  name    = "elastic"
  proxied = false
  value   = var.ingress_ip
  comment = var.comment
}
