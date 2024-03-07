output "argo_frontend_record" {
  value = aws_route53_record.argo-frontend.name
}

output "argo_server_record" {
  value = aws_route53_record.argo-server.name
}

output "elastic_record" {
  value = aws_route53_record.elastic.name
}
