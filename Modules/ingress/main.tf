resource "helm_release" "public-ingress" {
  name = "ingress"
  # repository       = "https://charts.bitnami.com/bitnami"
  repository = "https://kubernetes.github.io/ingress-nginx"
  # chart            = "nginx-ingress-controller"
  chart            = "ingress-nginx"
  namespace        = "public-ingress"
  create_namespace = true

  set {
    name  = "controller.service.type"
    value = "LoadBalancer"
  }
  set {
    name  = "controller.service.externalTrafficPolicy"
    value = "Local"
  }
}
