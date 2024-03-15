output "cl_argo_server_record" {
  value = cloudflare_record.argo-server.hostname
}

output "cl_elastic_record" {
  value = cloudflare_record.elastic.hostname
}
