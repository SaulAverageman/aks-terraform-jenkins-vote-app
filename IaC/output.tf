output "kube-config" {
  value = module.aks-cluster.kube_config
  sensitive = true
}