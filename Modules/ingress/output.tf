output "ingress_name" {
  value = helm_release.public-ingress.metadata[0].name
}


output "ingress_namespace" {
  value = helm_release.public-ingress.metadata[0].namespace
}
