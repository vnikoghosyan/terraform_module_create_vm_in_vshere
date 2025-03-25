terraform {
  required_version = "~> 1.10.5"

  required_providers {
    vsphere = {
      # https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs
      source  = "hashicorp/vsphere"
      version = "2.7.0"
    }
  }
}


