# # # vSphere
# # variable "vsphere_server_ip" {
# #   description = "vCenter Server IP"
# #   type        = string
# # }

# # variable "vsphere_server_user" {
# #   description = "vCenter Server username for Terraform"
# #   type        = string
# # }

# # variable "vsphere_server_password" {
# #   description = "vCenter Server password for Terraform"
# #   type        = string
# # }

# variable "vsphere_network_local" {
#   description = "vSphere Cluster Network"
#   type        = string
# }

# variable "vsphere_host_name" {
#   description = "vSphere Host"
#   type        = string
# }

# variable "vsphere_virtual_machine_name" {
#   description = "vSphere Template Virtual Machine for Clonning"
#   type        = string
# }

# variable "vsphere_datastore_name" {
#   description = "vSphere Cluster Datastore"
#   type        = string
# }

# variable "vsphere_datacenter_name" {
#   description = "vSphere Datacenter"
#   type        = string
# }

# # Environment
# variable "env" {
#   description = "Environment name"
#   type        = string
# }

# variable "argocd_admin_user" {
#   description = "ArgoCD admin user"
#   type        = string
# }

# variable "argocd_admin_pass_plain_text" {
#   description = "ArgoCD admin password plain text"
#   type        = string
# }

# variable "argocd_server" {
#   description = "ArgoCD server domain name with port"
#   type        = string
# }

# # VM resources
# # Master VM
# variable "master_vm_count" {
#   description = "Number of MASTER Nodes"
#   type        = number
# }

# # Worker VM
# variable "worker_vm_count" {
#   description = "Number of WORKER Nodes"
#   type        = number
# }

# # VM resources
# variable "master_vm_cpus" {
#   description = "Number of CPUs of MASTER VM"
#   type        = number
# }
# variable "master_vm_memory" {
#   description = "Memory in MB of MASTER VM"
#   type        = number
# }

# variable "worker_vm_cpus" {
#   description = "Number of CPUs of WORKER VMs"
#   type        = number
# }
# variable "worker_vm_memory" {
#   description = "Memory in MB of WORKER VMs"
#   type        = number
# }
# # Networking
# variable "master_vm_ip_prefix" {
#   description = "IP Address Prefix of the MASTER VM"
#   type        = string
# }

# variable "master_vm_ip_sufix" {
#   description = "IP Address Sufix of the MASTER VM"
#   type        = string
# }

# variable "worker_vm_ip_prefix" {
#   description = "IP Address Prefix of the WORKER VM"
#   type        = string
# }

# variable "worker_vm_ip_sufix" {
#   description = "IP Address Sufix of the WORKER VM"
#   type        = string
# }

# variable "domain_name" {
#   description = "Domain Name"
#   type        = string
# }

# variable "netmask" {
#   description = "Netmask"
#   type        = number
# }

# variable "gateway_ip" {
#   description = "Gateway IP"
#   type        = string
# }

# variable "dns_server_list" {
#   description = "DNS Server list"
#   type        = list(string)
# }
# # Disks
# variable "root_disk_size_master" {
#   description = "MASTER Virtual Machine ROOT Disk size"
#   type        = number
# }
# variable "home_disk_size_master" {
#   description = "MASTER Virtual Machine HOME Disk size"
#   type        = number
# }
# variable "var_disk_size_master" {
#   description = "MASTER Virtual Machine VAR Disk size"
#   type        = number
# }
# variable "log_disk_size_master" {
#   description = "MASTER Virtual Machine LOG Disk size"
#   type        = number
# }

# variable "root_disk_size_worker" {
#   description = "WORKER Virtual Machine ROOT Disk size"
#   type        = number
# }
# variable "home_disk_size_worker" {
#   description = "WORKER Virtual Machine HOME Disk size"
#   type        = number
# }
# variable "var_disk_size_worker" {
#   description = "WORKER Virtual Machine VAR Disk size"
#   type        = number
# }
# variable "log_disk_size_worker" {
#   description = "WORKER Virtual Machine LOG Disk size"
#   type        = number
# }