env = "env1"

# vSphere server
vsphere_server_ip       = "ip"
vsphere_server_user     = "terraform@domain"
vsphere_server_password = "password"

# VM location, network, storage and template in vSphere
vsphere_datacenter_name = "DC#"
vsphere_host_name       = "vm#.em.loc"
vsphere_network_local   = "Network#"
vsphere_datastore_name  = "VM#-SSD"

# Template
vsphere_template_datacenter_name      = "DC##"
vsphere_template_virtual_machine_name = "Ubuntu_24.04_Template"

## Master VM
master_vm_count     = 1
master_vm_cpus      = 2
master_vm_memory    = 2048
master_vm_ip_prefix = "11.111.111"
master_vm_ip_sufix  = "210"

root_disk_size_master = 50
home_disk_size_master = 10
var_disk_size_master  = 50
log_disk_size_master  = 100

## Worker VMs
worker_vm_count     = 2
worker_vm_cpus      = 2
worker_vm_memory    = 2048
worker_vm_ip_prefix = "11.111.111"
worker_vm_ip_sufix  = "211"

root_disk_size_worker = 50
home_disk_size_worker = 10
var_disk_size_worker  = 50
log_disk_size_worker  = 100

# Networking
domain_name     = "domain"
netmask         = 24
gateway_ip      = "11.111.111.254"
dns_server_list = ["11.111.111.254"]
jump_server     = "-J jump#"
