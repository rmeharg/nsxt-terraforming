nsx_hostname = "" # Example: "nsx.somelab.io"
nsx_user     = "" # Example: "admin"
nsx_password = "" # Example: "password"

edge_cluster              = "edge-cluster"
overlay_tz                = "nsx-overlay-transportzone"
vlan_tz                   = "nsx-vlan-transportzone"
t0_gateway                = "ROUTER-T0"
t0_gateway_interface_name = "UPLINK-TO-PYHSICAL"
t0_gateway_ip_addresses   = ["10.0.0.28/22"]
static_route_network_cidr = "0.0.0.0/0"
static_route_next_hop     = "10.0.0.1"
t0_segment                = "UPLINKS"
vlan_ids                  = ["0"]

t1_gateway_infra      = "INFRASTRUCTURE"
t1_gateway_infra_cidr = ["192.168.3.1/26"]

t1_gateway_tkgi      = "TKGI"
t1_gateway_tkgi_cidr = ["192.168.4.1/23"]

snat_rule_name = "INTERNAL-TO-EXTERNAL"
snat_cidr      = ["192.168.0.0/16"]
snat_public_ip = ["10.0.0.29"]

opsmanager_dnat_rule_name = "OPSMANAGER"
opsmanager_public_ip      = ["10.0.0.32"]
opsmanager_private_ip     = ["192.168.3.10"]

tkgi_nodes_ip_block_name = "tkgi-nodes-ip-block"
tkgi_nodes_ip_block_cidr = "192.168.64.0/19"

tkgi_pods_ip_block_name = "tkgi-pods-ip-block"
tkgi_pods_ip_block_cidr = "172.16.64.0/19"

tkgi_snat_ip_pool_name        = "tkgi-floating-ip-pool"
tkgi_snat_ip_pool_range_start = "10.0.0.71"
tkgi_snat_ip_pool_range_end   = "10.0.0.100"
tkgi_snat_ip_pool_cidr        = "10.0.0.0/22"
tkgi_snat_ip_pool_gateway     = "10.0.0.1"

workload_lb_name = "workload-lb"
workload_lb_type = "SMALL" # SMALL | MEDIUM | LARGE | XLARGE | DLB

tkgi_dnat_rule_name = "TKGI-API"
tkgi_api_private_ip = ["192.168.4.12"]
tkgi_public_ip      = ["10.0.0.36"]
