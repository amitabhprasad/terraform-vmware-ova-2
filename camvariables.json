{
  "terraform_version": "~> 0.12.0",
  "input_datatypes": [
  ],
  "output_datatype": "content_template_output",
  "input_groups": [
    {
      "name": "cloud",
      "label": "Cloud Input Variables"
    },
    {
      "name": "virtualmachine",
      "label": "Virtual Machine Input Variables"
    },
    {
      "name": "image_parameters",
      "label": "Image Parameters"
    }
  ],
  "output_groups": [
    {
      "name": "content_template_output",
      "label": "Outputs"
    }
  ],
  "template_input_params": [
    {
      "name": "allow_unverified_ssl",
      "type": "string",
      "description": "Communication with vsphere server with self signed certificate",
      "default": true,
      "hidden": true,
      "label": "Communication with vsphere server with self signed certificate",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "cloud"
    },
    {
      "name": "vm_1_name",
      "type": "string",
      "description": "Hostname of virtual machine",
      "default": "vm-name",
      "hidden": false,
      "label": "Vm 1 Hostname - vm_1",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_dns_servers",
      "type": "list",
      "description": "DNS servers for the virtual network adapter",
      "default": ["9.42.4.253"],
      "hidden": true,
      "label": "DNS Servers",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_dns_suffixes",
      "type": "list",
      "description": "Name resolution suffixes for the virtual network adapter",
      "hidden": true,
      "default": ["tivlab.raleigh.ibm.com"],
      "label": "DNS Suffixes",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_root_disk_keep_on_remove",
      "type": "string",
      "description": "Delete template disk volume when the virtual machine is deleted",
      "hidden": true,
      "label": "Delete template disk volume when the virtual machine is deleted - vm_1",
      "secured": false,
      "options": [
        {
          "value": "false",
          "label": "False"
        },
        {
          "value": "true",
          "label": "True",
          "default": "true"
        }
      ],
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_domain",
      "type": "string",
      "description": "Domain Name of virtual machine",
      "default": "tivlab.raleigh.ibm.com",
      "hidden": true,
      "label": "Domain Name",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1-image",
      "type": "string",
      "description": "VMware template that should be used when creating the virtual image",
      "hidden": false,
      "default": "demo",
      "label": "Operating System ID / Template - vm_1",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_root_disk_size",
      "type": "string",
      "description": "Size of template disk volume. Should be equal to template's disk size",
      "default": "40",
      "hidden": false,
      "label": "VM Disk Size",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_root_disk_controller_type",
      "type": "string",
      "description": "Type of template disk controller",
      "hidden": true,
      "label": "Template Disk Controller - vm_1",
      "secured": false,
      "options": [
        {
          "value": "scsi",
          "label": "scsi",
          "default": "true"
        },
        {
          "value": "scsi-lsi-parallel",
          "label": "scsi-lsi-parallel"
        },
        {
          "value": "scsi-buslogic",
          "label": "scsi-buslogic"
        },
        {
          "value": "scsi-paravirtual",
          "label": "scsi-paravirtual"
        },
        {
          "value": "scsi-isi-sas",
          "label": "scsi-isi-sas"
        },
        {
          "value": "ide",
          "label": "ide"
        }
      ],
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_root_disk_datastore",
      "type": "string",
      "description": "Data store or storage cluster name for target virtual machine's disks",
      "hidden": false,
      "default": "v7000_vmware2_v6",
      "label": "Template Disk Datastore where VM will be placed",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_root_disk_type",
      "type": "string",
      "description": "Type of template disk volume",
      "hidden": true,
      "label": "Template Disk Type - vm_1",
      "secured": false,
      "options": [
        {
          "value": "eager_zeroed",
          "label": "Thick Provision Eager Zeroed"
        },
        {
          "value": "lazy",
          "label": "Thick Provision Lazy Zeroed"
        },
        {
          "value": "thin",
          "label": "Thin Provision",
          "default": "true"
        }
      ],
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_ipv4_gateway",
      "type": "string",
      "description": "IPv4 gateway for vNIC configuration",
      "hidden": false,
      "default": "9.42.12.1",
      "label": "Virtual Machine Gateway Address",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_ipv4_address",
      "type": "string",
      "description": "IPv4 address for vNIC configuration",
      "default": "9.42.12.176",
      "hidden": false,
      "label": "Virtual Machine IP Address",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_memory",
      "type": "string",
      "description": "Memory assigned to the virtual machine in megabytes. This value is required to be an increment of 1024",
      "default": "8192",
      "hidden": false,
      "label": "Virtual Machine Memory",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_ipv4_prefix_length",
      "type": "string",
      "description": "IPv4 prefix length for vNIC configuration. The value must be a number between 8 and 32",
      "hidden": false,
      "default": "22",
      "label": "Virtual Machine Netmask Prefix",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_number_of_vcpu",
      "type": "string",
      "description": "Number of virtual CPU for the virtual machine, which is required to be a positive Integer",
      "default": "4",
      "hidden": false,
      "label": "Virtual Machine vCPUs",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_network_interface_label",
      "type": "string",
      "description": "vSphere port group or network label for virtual machine's vNIC",
      "hidden": false,
      "default": "VM Network",
      "label": "Virtual Machine vSphere Port Group",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_cluster",
      "type": "string",
      "description": "Target vSphere cluster to host the virtual machine",
      "hidden": false,
      "default": "X3750",
      "label": "Target vSphere Cluster",
      "secured": false,
      "required": false,
      "immutable": false,
      "group_name": "cloud"
    },
    {
      "name": "vm_1_datacenter",
      "type": "string",
      "description": "Target vSphere datacenter for virtual machine creation",
      "hidden": false,
      "default": "RTP",
      "label": "Target vSphere Datacenter",
      "secured": false,
      "required": false,
      "immutable": false,
      "group_name": "cloud"
    },
    {
      "name": "vm_1_folder",
      "type": "string",
      "description": "Target vSphere folder for virtual machine",
      "default": "/RTP/vm/teraform",
      "hidden": false,
      "label": "vSphere Folder Name - vm_1",
      "secured": false,
      "required": false,
      "immutable": false,
      "group_name": "cloud"
    },
    {
      "name": "vm_1_adapter_type",
      "type": "string",
      "description": "Network adapter type for vNIC Configuration",
      "hidden": true,
      "label": "vSphere Network Adapter Type",
      "secured": false,
      "options": [
        {
          "value": "vmxnet3",
          "label": "vmxnet3",
          "default": "true"
        },
        {
          "value": "e1000",
          "label": "e1000"
        }
      ],
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    },
    {
      "name": "vm_1_resource_pool",
      "type": "string",
      "description": "Target vSphere Resource Pool to host the virtual machine",
      "hidden": true,
      "default": "Pool1",
      "label": "vSphere Resource Pool - vm_1",
      "secured": false,
      "required": true,
      "immutable": false,
      "group_name": "virtualmachine"
    }
  ],
  "template_output_params": []
}
