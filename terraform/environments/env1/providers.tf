# Provider's versions are managed from terraform/modules/vsphere_vm/providers.tf file.
#-------------------------------------------------------------------------------------

provider "vsphere" {
  user                 = var.vsphere_server_user
  password             = var.vsphere_server_password
  vsphere_server       = var.vsphere_server_ip
  allow_unverified_ssl = true # Set to false in production after setting up vCenter SSL correctly
}
