# Resources --------------------------------------------------
## VM --------------------------------------------------------
resource "vsphere_virtual_machine" "vm" {
  count            = var.vm_count
  name             = "${var.vm_name_prefix}-${var.env}-${count.index}"
  resource_pool_id = var.resource_pool_id
  datastore_id     = var.datastore_id
  guest_id         = var.guest_id
  scsi_type        = var.scsi_type
  num_cpus         = var.vm_cpus
  memory           = var.vm_memory
  firmware         = "efi"

  lifecycle {
    ignore_changes = [
      ept_rvi_mode,
      hv_mode
    ]
  }

  network_interface {
    network_id = var.network_id
  }

  disk {
    label            = "${var.vm_name_prefix}-${var.env}-${count.index}-root"
    size             = var.vm_root_disk_size
    thin_provisioned = var.disk_0_thin_provisioned
    unit_number      = 0
  }

  disk {
    label            = "${var.vm_name_prefix}-${var.env}-${count.index}-home"
    size             = var.vm_home_disk_size
    thin_provisioned = var.disk_1_thin_provisioned
    unit_number      = 1
  }

  disk {
    label            = "${var.vm_name_prefix}-${var.env}-${count.index}-var"
    size             = var.vm_var_disk_size
    thin_provisioned = var.disk_2_thin_provisioned
    unit_number      = 2
  }

  disk {
    label            = "${var.vm_name_prefix}-${var.env}-${count.index}-log"
    size             = var.vm_log_disk_size
    thin_provisioned = var.disk_3_thin_provisioned
    unit_number      = 3
  }

  clone {
    template_uuid = var.template_uuid
    customize {
      linux_options {
        host_name = "${var.vm_name_prefix}-${var.env}-${count.index}"
        domain    = var.domain_name
      }
      network_interface {
        # ipv4_address = "${var.vm_ip_prefix}.${var.vm_ip_sufix}+${count.index}"
        ipv4_address = "${var.vm_ip_prefix}.${var.vm_ip_sufix + count.index}"
        ipv4_netmask = var.netmask
      }
      ipv4_gateway    = var.gateway_ip
      dns_server_list = var.dns_server_list
    }
  }
}

