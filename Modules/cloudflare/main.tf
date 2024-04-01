terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}


resource "cloudflare_record" "argo-server" {
  zone_id = var.cloudflare_zone_id
  type    = "A"
  name    = "graph"
  proxied = false
  value   = var.ingress_ip
  comment = var.comment
}

resource "cloudflare_record" "elastic" {
  zone_id = var.cloudflare_zone_id
  type    = "A"
  name    = "es"
  proxied = false
  value   = var.ingress_ip
  comment = var.comment
}
