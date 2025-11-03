terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # 👈 downgrade to 5.x
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.17"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.37.1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}
