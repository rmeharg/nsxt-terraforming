variable "nsx_manager" {}
variable "nsx_username" {}
variable "nsx_password" {}
variable "edge_cluster" {}
variable "overlay_tz" {}
variable "vlan_tz" {}
variable "t0_gateway" {}
variable "t0_gateway_interface_name" {}
variable "t0_gateway_ip_addresses" {
  type = list(string)
}
variable "static_route_network_cidr" {}
variable "static_route_next_hop" {}
variable "t0_segment" {}
variable "vlan_ids" {
  type = list(string)
}

variable "t1_gateway_infra" {}
variable "t1_gateway_infra_cidr" {
  type = list(string)
}

variable "t1_gateway_tkgi" {}
variable "t1_gateway_tkgi_cidr" {
  type = list(string)
}

variable "snat_rule_name" {}
variable "snat_cidr" {
  type = list(string)
}
variable "snat_public_ip" {
  type = list(string)
}

variable "opsmanager_dnat_rule_name" {}
variable "opsmanager_public_ip" {
  type = list(string)
}
variable "opsmanager_private_ip" {
  type = list(string)
}

variable "tkgi_nodes_ip_block_name" {}
variable "tkgi_nodes_ip_block_cidr" {}
variable "tkgi_pods_ip_block_name" {}
variable "tkgi_pods_ip_block_cidr" {}

variable "tkgi_snat_ip_pool_name" {}
variable "tkgi_snat_ip_pool_range_start" {}
variable "tkgi_snat_ip_pool_range_end" {}
variable "tkgi_snat_ip_pool_cidr" {}
variable "tkgi_snat_ip_pool_gateway" {}

variable "workload_lb_name" {}
variable "workload_lb_type" {}

variable "tkgi_dnat_rule_name" {}
variable "tkgi_api_private_ip" {
  type = list(string)
}
variable "tkgi_public_ip" {
  type = list(string)
}
