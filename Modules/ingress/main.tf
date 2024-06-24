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
  # set {
  #   name  = "controller.service.externalTrafficPolicy"
  #   value = "Local"
  # }

# this properties will enable the internal load balancer for the ingress controller
  set {
    name  = "controller.service.internal.enabled"
    value = true
  }

  set {
    name  = "controller.service.annotations.service\\.beta\\.kubernetes\\.io/azure-load-balancer-internal"
    value = "true"
  }

  # values = [file("${path.module}/values.yaml")] #! uncomment this only if you are using azure service 
}
