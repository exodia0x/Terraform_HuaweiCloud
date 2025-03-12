terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = ">= 1.36.0"
    }
  }
}

provider "huaweicloud" {
  region       = "ap-southeast-3"
  project_name = var.project_name
  access_key   = var.access_key
  secret_key   = var.secret_key
}
