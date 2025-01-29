variable "metadata" {
  type        = map(string)
  default = {}
}
variable "token" {
  type        = string
}
variable "cloud_id" {
  type        = string
}
variable "folder_id" {
  type        = string
}
variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}
variable "vms_ssh_root_key" {
  type        = string
  description = "ssh-keygen -t ed25519"
}
variable "each_vm" {
  type = map(object({
    platform_id=string
    vm_name=string
    cpu=number
    ram=number
    core_fraction=number
    type=string
    disk_volume=number
    network_interface=bool
    scheduling_policy=bool
    os_family=string
    }))
  default = {
    "vm1" = {
      platform_id="standard-v3"
      vm_name="elasticsearch"
      cpu=2
      ram=2
      core_fraction=20
      type="network-hdd"
      disk_volume=10
      network_interface=true
      scheduling_policy=true
      os_family="fd8jnll1ou4fv2gil3rv"
    }
    "vm2" = {
      platform_id="standard-v3"
      vm_name="logstash"
      cpu=2
      ram=2
      core_fraction=20
      type="network-hdd"
      disk_volume=10
      network_interface=true
      scheduling_policy=true
      os_family="fd8jnll1ou4fv2gil3rv"
    }
    "vm3" = {
      platform_id="standard-v3"
      vm_name="kibana"
      cpu=2
      ram=2
      core_fraction=20
      type="network-hdd"
      disk_volume=10
      network_interface=true
      scheduling_policy=true
      os_family="fd8jnll1ou4fv2gil3rv"
    }
    "vm4" = {
      platform_id="standard-v3"
      vm_name="filebeat"
      cpu=2
      ram=1
      core_fraction=20
      type="network-hdd"
      disk_volume=10
      network_interface=true
      scheduling_policy=true
      os_family="fd8jnll1ou4fv2gil3rv"
    }
  }
}