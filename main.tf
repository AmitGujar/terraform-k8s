module "nginxIngress" {
  source = "./Modules/ingress"
}

module "certManager" {
  source = "./Modules/certMgr"
}

# module "neo4j" {
#   source = "./Modules/neo4J"
# }

module "route53" {
  source           = "./Modules/route53"
  route53_zone_id  = data.aws_route53_zone.primary.id
  ingress_hostname = data.kubernetes_service.public_ingress.status.0.load_balancer.0.ingress.0.ip

  depends_on = [data.kubernetes_service.public_ingress]
}


module "cloudflare" {
  source             = "./Modules/cloudflare"
  cloudflare_zone_id = data.cloudflare_zone.akstest.id
  ingress_ip         = data.kubernetes_service.public_ingress.status.0.load_balancer.0.ingress.0.ip
}

# module "elastic" {
#   source = "./Modules/elastic"
# }
