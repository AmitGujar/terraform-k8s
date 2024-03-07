resource "helm_release" "elastic-search" {
  name             = "elastic-operator"
  repository       = "https://helm.elastic.co"
  chart            = "eck-operator"
  namespace        = "elastic-system"
  create_namespace = true

}

resource "helm_release" "elasticsearch" {
  name             = "elasticsearch"
  namespace        = "elastic-deployment"
  repository       = "https://helm.elastic.co"
  chart            = "elasticsearch"
  create_namespace = true
  values           = [file("${path.module}/values.yml")]
}
