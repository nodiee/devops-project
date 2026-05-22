terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.4.0"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}

resource "minikube_cluster" "minikube_docker" {
  driver = "docker"

  cluster_name = "terraform-minikube"

  kubernetes_version = "1.30.0"

  nodes = 1

  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}