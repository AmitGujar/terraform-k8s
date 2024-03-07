resource "aws_route53_record" "argo-frontend" {
  zone_id = var.route53_zone_id
  name    = "argo-frontend.9-tails-fox.tech"
  type    = "CNAME"
  ttl     = "300"
  records = [var.ingress_hostname]

}

resource "aws_route53_record" "argo-server" {
  zone_id = var.route53_zone_id
  name    = "argoserver.9-tails-fox.tech"
  type    = "CNAME"
  ttl     = "300"
  records = [var.ingress_hostname]
}

resource "aws_route53_record" "elastic" {
  zone_id = var.route53_zone_id
  name    = "elastic.9-tails-fox.tech"
  type    = "CNAME"
  ttl     = "300"
  records = [var.ingress_hostname]
}
