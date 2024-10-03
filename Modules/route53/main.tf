resource "aws_route53_record" "cdp-frontend" {
  zone_id = var.route53_zone_id
  name    = "cdp-frontend.9-tails-fox.tech"
  type    = "A"
  ttl     = "300"
  records = [var.ingress_hostname]

}

resource "aws_route53_record" "argo-server" {
  zone_id = var.route53_zone_id
  name    = "amund.9-tails-fox.tech"
  type    = "A"
  ttl     = "300"
  records = [var.ingress_hostname]
}

resource "aws_route53_record" "cdp-backend" {
  zone_id = var.route53_zone_id
  name    = "cdp-backend.9-tails-fox.tech"
  type    = "A"
  ttl     = "300"
  records = [var.ingress_hostname]
}

resource "aws_route53_record" "data-discovery" {
  zone_id = var.route53_zone_id
  name    = "data-discovery.9-tails-fox.tech"
  type    = "A"
  ttl     = "300"
  records = [var.ingress_hostname]
}

resource "aws_route53_record" "node-backend" {
  zone_id = var.route53_zone_id
  name    = "node-backend.9-tails-fox.tech"
  type    = "A"
  ttl     = "300"
  records = [var.ingress_hostname]
}