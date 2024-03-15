resource "helm_release" "cert-manager" {
  name       = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"
  namespace  = "default"

  set {
    name  = "installCRDs"
    value = "true"
  }
}


# resource "time_sleep" "wait" {
#   depends_on      = [helm_release.cert-manager]
#   create_duration = "20s"
# }

resource "kubernetes_manifest" "issuer" {
  manifest = {
    "apiVersion" = "cert-manager.io/v1"
    "kind"       = "ClusterIssuer"
    metadata = {
      "name" = "letsencrypt-production"
    }

    spec = {
      acme = {
        "server" = "https://acme-v02.api.letsencrypt.org/directory"
        "email"  = "amitgujar3342@gmail.com"
        privateKeySecretRef = {
          name = "letsencrypt-production"
        }
        solvers = [
          {
            http01 = {
              ingress = {
                "class" = "nginx"
              }
            }
          }
        ]
      }
    }
  }
  depends_on = [
    helm_release.cert-manager
  ]
}
