data "kubernetes_service" "public_ingress" {
  metadata {
    name      = "ingress-nginx-ingress-controller"
    namespace = module.nginxIngress.ingress_namespace
  }

  depends_on = [module.nginxIngress]
}


data "aws_route53_zone" "primary" {
  name = "9-tails-fox.tech"
}
