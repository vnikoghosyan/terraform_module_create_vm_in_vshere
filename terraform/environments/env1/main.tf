terraform {
  # https://developer.hashicorp.com/terraform/language/backend/s3
  backend "s3" {
    bucket = "terraform-state"

    endpoints = {
      s3 = "https://miniourl:9000"
    }

    access_key = "access_key"
    secret_key = "secret_key"

    key                         = "kubernetes_enviromnents/env1/k8s-dev-env.tfstate"
    use_lockfile                = true
    region                      = "main"
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    use_path_style              = true
  }
}

# Deploy Kubernetes VMs using the Module --------------------------------------------------
module "masters" {
  source = "../../modules/vsphere_vm"
  env            = var.env
  # VM specific attributes
  vm_name_prefix = "k8s-master"
  vm_count       = var.master_vm_count
  # Template
  vsphere_template_datacenter_name      = var.vsphere_template_datacenter_name
  vsphere_template_virtual_machine_name = var.vsphere_template_virtual_machine_name
  guest_id      = data.vsphere_virtual_machine.template.guest_id
  scsi_type     = data.vsphere_virtual_machine.template.scsi_type
  template_uuid = data.vsphere_virtual_machine.template.id
  # VM resources
  vm_cpus   = var.master_vm_cpus
  vm_memory = var.master_vm_memory
  # Networking
  vm_ip_prefix    = var.master_vm_ip_prefix
  vm_ip_sufix     = var.master_vm_ip_sufix
  domain_name     = var.domain_name
  netmask         = var.netmask
  gateway_ip      = var.gateway_ip
  dns_server_list = var.dns_server_list
  network_id      = data.vsphere_network.network_local.id
  # Datacenter unique attributes
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  # Disks attributes
  vm_root_disk_size       = var.root_disk_size_master
  disk_0_thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned # true
  vm_home_disk_size       = var.home_disk_size_master
  disk_1_thin_provisioned = data.vsphere_virtual_machine.template.disks.1.thin_provisioned # true
  vm_var_disk_size        = var.var_disk_size_master
  disk_2_thin_provisioned = data.vsphere_virtual_machine.template.disks.2.thin_provisioned # true
  vm_log_disk_size        = var.log_disk_size_master
  disk_3_thin_provisioned = data.vsphere_virtual_machine.template.disks.3.thin_provisioned # true
}


module "workers" {
  source         = "../../modules/vsphere_vm"
  env            = var.env
  # VM specific attributes
  vm_name_prefix = "k8s-worker"
  vm_count       = var.worker_vm_count
  # Template
  vsphere_template_datacenter_name      = var.vsphere_template_datacenter_name
  vsphere_template_virtual_machine_name = var.vsphere_template_virtual_machine_name
  guest_id      = data.vsphere_virtual_machine.template.guest_id
  scsi_type     = data.vsphere_virtual_machine.template.scsi_type
  template_uuid = data.vsphere_virtual_machine.template.id
  # VM resources
  vm_cpus   = var.worker_vm_cpus
  vm_memory = var.worker_vm_memory
  # Networking
  vm_ip_prefix    = var.worker_vm_ip_prefix
  vm_ip_sufix     = var.worker_vm_ip_sufix
  domain_name     = var.domain_name
  netmask         = var.netmask
  gateway_ip      = var.gateway_ip
  dns_server_list = var.dns_server_list
  network_id      = data.vsphere_network.network_local.id
  # Unique attributes
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  # Disks attributes
  vm_root_disk_size       = var.root_disk_size_worker
  disk_0_thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned # true
  vm_home_disk_size       = var.home_disk_size_worker
  disk_1_thin_provisioned = data.vsphere_virtual_machine.template.disks.1.thin_provisioned # true
  vm_var_disk_size        = var.var_disk_size_worker
  disk_2_thin_provisioned = data.vsphere_virtual_machine.template.disks.2.thin_provisioned # true
  vm_log_disk_size        = var.log_disk_size_worker
  disk_3_thin_provisioned = data.vsphere_virtual_machine.template.disks.3.thin_provisioned # true
}

