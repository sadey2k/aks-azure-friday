output "kube_config" {
  value = azurerm_kubernetes_cluster.aks-cluster_demo01.kube_config_raw

  sensitive = true
}
