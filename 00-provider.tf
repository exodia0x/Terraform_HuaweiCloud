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
  access_key   = "SVAQQ28G8ISUVKGQ80KW"
  secret_key   = "dU9R7pIgM0UyiFjKjaby4z0ZAl5t0WaEaKlwbEph"
}
