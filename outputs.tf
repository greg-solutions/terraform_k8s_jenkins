output "urls" {
  value = module.ingress.urls
}
output "namespace" {
  value = var.create_namespace == true ? kubernetes_namespace.namespace[0].id : var.app_namespace
}