resource "helm_release" "external_secrets" {
  name = "external-secrets"

  repository       = "https://charts.external-secrets.io"
  chart            = "external-secrets"
  namespace        = "kube-system"
  create_namespace = true
  version          = "0.9.1"
}