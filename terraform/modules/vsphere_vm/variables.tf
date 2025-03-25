# Environment
variable "env" {
  description = "Environment name"
  type        = string
}

# Template
variable "vsphere_template_datacenter_name" {
  description = "vSphere Datacenter"
  type        = string
}

variable "vsphere_template_virtual_machine_name" {
  description = "vSphere Virtual Machine for Clonning"
  type        = string
}

# VM configurations
variable "vm_count" {
  description = "Number of Nodes"
  type        = number
}

variable "vm_name_prefix" {
    description = "VM Name Prefix"
    type        = string
}

variable "vm_ip_sufix" {
    description = "VM Name Sufix"
    type        = number
}

variable "vm_cpus" {
  description = "Number of CPUs"
  type        = number
}

variable "vm_memory" {
  description = "Memory in MB"
  type        = number
}

# VMware resource configurations
variable "resource_pool_id" {}
variable "datastore_id" {}
variable "guest_id" {}
variable "scsi_type" {}
variable "network_id" {}

# Disk specifications
# Root disk
variable "disk_0_thin_provisioned" {
  description = "ROOT disk provisioning type"
}
variable "vm_root_disk_size" {
  description = "Virtual Machine ROOT Disk size"
  type        = number
}
# Home disk
variable "disk_1_thin_provisioned" {
  description = "Home disk"
}
variable "vm_home_disk_size" {
  description = "Virtual Machine HOME Disk size"
  type        = number
}
# VAR disk
variable "disk_2_thin_provisioned" {
  description = "VAR disk"
}
variable "vm_var_disk_size" {
  description = "Virtual Machine VAR Disk size"
  type        = number
}
# LOG disk
variable "disk_3_thin_provisioned" {
  description = "LOG Disk"
}
variable "vm_log_disk_size" {
  description = "Virtual Machine LOG Disk size"
  type        = number
}

# Template
variable "template_uuid" {
  description = "VM Template"
  type = string
}

# Networking
variable "domain_name" {
  description = "Domain Name"
  type        = string
}

variable "vm_ip_prefix" {
  description = "IP Address Prefix of the VM"
  type        = string
}

variable "netmask" {
  description = "Netmask"
  type        = number
}

variable "gateway_ip" {
  description = "Gateway IP"
  type        = string
}

variable "dns_server_list" {
  description = "DNS Server list"
  type        = list(string)
}