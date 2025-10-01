terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

provider "null" {}

resource "null_resource" "demo" {
  provisioner "local-exec" {
    command = "echo Hello from Terraform Plan"
  }
}
