terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

resource "cloudflare_record" "jenkins" {
  zone_id = var.cloudflare_zone_id
  type    = "A"
  name    = "jenkins"
  proxied = false
  value   = var.ingress_ip
  comment = var.comment
}
