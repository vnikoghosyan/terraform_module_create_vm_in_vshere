# Data Sources --------------------------------------------------

# Datacenter
data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter_name
}
# Host
data "vsphere_host" "host" {
  name          = var.vsphere_host_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
# Resource Pool
data "vsphere_resource_pool" "pool" {
  name          = "${data.vsphere_host.host.name}/Resources"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
# Network
data "vsphere_network" "network_local" {
  name          = var.vsphere_network_local
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
# Datastore
data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
# Template
data "vsphere_datacenter" "template_dc_location" {
  name = var.vsphere_template_datacenter_name
}
data "vsphere_virtual_machine" "template" {
  name          = var.vsphere_template_virtual_machine_name
  datacenter_id = data.vsphere_datacenter.template_dc_location.id
}