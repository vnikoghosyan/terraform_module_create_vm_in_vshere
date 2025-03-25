# Generating hosts.ini file for this ENV

locals {
  # Compose jump option if jump_server is set
  jump_server_option = var.jump_server != "" ? "ansible_ssh_common_args='${var.jump_server} -o StrictHostKeyChecking=no'" : ""

  master_lines = [
    for i in range(var.master_vm_count) :
    "master-${i} ansible_host=${var.master_vm_ip_prefix}.${var.master_vm_ip_sufix + i} ${local.jump_server_option}"
  ]

  worker_lines = [
    for i in range(var.worker_vm_count) :
    "worker-${i} ansible_host=${var.worker_vm_ip_prefix}.${var.worker_vm_ip_sufix + i} ${local.jump_server_option}"
  ]

  master_section = join("\n", local.master_lines)
  worker_section = join("\n", local.worker_lines)
}

data "template_file" "ansible_hosts" {
  template = file("${path.module}/../../templates/hosts.ini.tpl")
  vars = {
    master_section = local.master_section
    worker_section = local.worker_section
  }
  depends_on = [
    module.masters,
    module.workers
]
}

resource "local_file" "ansible_hosts" {
  content  = data.template_file.ansible_hosts.rendered
  filename = "${path.module}/../../../ansible/environments/${var.env}/hosts.ini"
}