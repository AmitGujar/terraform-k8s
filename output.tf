output "ingress_hostname" {
  value = data.kubernetes_service.public_ingress.status.0.load_balancer.0.ingress.0.hostname
}

output "cert_mgr_name" {
  value = module.certManager.cert_mgr_name
}

output "argo_frontend_record" {
  value = module.route53.argo_frontend_record
}

output "argo_server_record" {
  value = module.route53.argo_server_record
}

output "elastic_record" {
  value = module.route53.elastic_record
}
