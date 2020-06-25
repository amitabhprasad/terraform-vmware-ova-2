# This is a terraform generated template generated from blueprint89

##############################################################
# Keys - CAMC (public/private) & optional User Key (public) 
##############################################################
variable "allow_unverified_ssl" {
  description = "Communication with vsphere server with self signed certificate"
  default     = "true"
}

##############################################################
# Define the vsphere provider 
##############################################################
provider "vsphere" {
  version              = ">= 1.3.0, <= 1.18.3"
  allow_unverified_ssl = "true"
}

provider "camc" {
  version = "~> 0.2"
}

data "vsphere_datacenter" "dc" {
  name = "RTP"
}

data "vsphere_datastore" "datastore" {
  name          = "v7000_vmware2_v6"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_resource_pool" "pool" {
  name          = "Pool1"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_network" "network" {
  name          = "VM Network"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_virtual_machine" "template" {
  name          = "ubuntu-OVA"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

resource "vsphere_virtual_machine" "vm" {
  name             = "http3"
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"

  num_cpus = 4
  memory   = 8192
  guest_id = "${data.vsphere_virtual_machine.template.guest_id}"

  scsi_type = "${data.vsphere_virtual_machine.template.scsi_type}"

  network_interface {
    network_id   = "${data.vsphere_network.network.id}"
    adapter_type = "${data.vsphere_virtual_machine.template.network_interface_types[0]}"
  }

  disk {
    label            = "disk0"
    size             = "${data.vsphere_virtual_machine.template.disks.0.size}"
    eagerly_scrub    = "${data.vsphere_virtual_machine.template.disks.0.eagerly_scrub}"
    thin_provisioned = "${data.vsphere_virtual_machine.template.disks.0.thin_provisioned}"
  }

  cdrom {
    client_device = true
  }

  clone {
    template_uuid = "${data.vsphere_virtual_machine.template.id}"
  }

  vapp {
    properties = {
        user-data = "${base64encode(file("cloud-init.yml"))}"
#       "guestinfo.tf.internal.id" = "42"
    }
  }

}
