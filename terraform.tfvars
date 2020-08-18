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

t1_gateway_automation      = "AUTOMATION"
t1_gateway_automation_cidr = ["192.168.2.1/24"]

t1_gateway_infra      = "INFRASTRUCTURE"
t1_gateway_infra_cidr = ["192.168.3.1/26"]

t1_gateway_tas      = "TAS"
t1_gateway_tas_cidr = ["192.168.4.1/23"]

t1_gateway_services      = "SERVICES"
t1_gateway_services_cidr = ["192.168.6.1/23"]

t1_gateway_tkgi      = "TKGI"
t1_gateway_tkgi_cidr = ["192.168.8.1/23"]

t1_gateway_tkg      = "TKG"
t1_gateway_tkg_cidr = ["192.168.10.1/23"]

snat_rule_name = "INTERNAL-TO-EXTERNAL"
snat_cidr      = ["192.168.0.0/16"]
snat_public_ip = ["10.0.0.29"]

jumpbox_dnat_rule_name = "JUMPBOX"
jumpbox_public_ip      = ["10.0.0.30"]
jumpbox_private_ip     = ["192.168.2.10"]

concourse_dnat_rule_name = "CONCOURSE"
concourse_public_ip      = ["10.0.0.31"]
concourse_private_ip     = ["192.168.2.21"]

opsmanager_dnat_rule_name = "OPSMANAGER"
opsmanager_public_ip      = ["10.0.0.32"]
opsmanager_private_ip     = ["192.168.3.10"]

tas_ip_block_name = "tas-ip-block"
tas_ip_block_cidr = "192.168.32.0/19"

tkgi_nodes_ip_block_name = "tkgi-nodes-ip-block"
tkgi_nodes_ip_block_cidr = "192.168.64.0/19"

tkgi_pods_ip_block_name = "tkgi-pods-ip-block"
tkgi_pods_ip_block_cidr = "172.16.64.0/19"

tas_snat_ip_pool_name        = "tas-floating-ip-pool"
tas_snat_ip_pool_range_start = "10.0.0.60"
tas_snat_ip_pool_range_end   = "10.0.0.70"
tas_snat_ip_pool_cidr        = "10.0.0.0/22"
tas_snat_ip_pool_gateway     = "10.0.0.1"

tkgi_snat_ip_pool_name        = "tkgi-floating-ip-pool"
tkgi_snat_ip_pool_range_start = "10.0.0.71"
tkgi_snat_ip_pool_range_end   = "10.0.0.100"
tkgi_snat_ip_pool_cidr        = "10.0.0.0/22"
tkgi_snat_ip_pool_gateway     = "10.0.0.1"

workload_lb_name = "workload-lb"
workload_lb_type = "SMALL" # SMALL | MEDIUM | LARGE | XLARGE | DLB

router_ns_group_name           = "router_ns_group"
router_server_pool_name        = "RouterServerPool"
router_public_ip               = "10.0.0.33"
router_lb_application_profile  = "default-tcp-lb-app-profile"
router_active_lb_monitor_name  = "ROUTERS"
router_passive_lb_monitor_name = "default-passive-lb-monitor"

diego_brain_ns_group_name           = "diego_brain_ns_group"
diego_brain_server_pool_name        = "DiegoBrainServerPool"
diego_brain_public_ip               = "10.0.0.34"
diego_brain_lb_application_profile  = "default-tcp-lb-app-profile"
diego_brain_active_lb_monitor_name  = "DIEGO_BRAINS"
diego_brain_passive_lb_monitor_name = "default-passive-lb-monitor"

istio_router_ns_group_name           = "istio_router_ns_group"
istio_router_server_pool_name        = "IstioServerPool"
istio_router_server_public_ip        = "10.0.0.35"
istio_router_lb_application_profile  = "default-tcp-lb-app-profile"
istio_router_active_lb_monitor_name  = "ISTIO_ROUTERS"
istio_router_passive_lb_monitor_name = "default-passive-lb-monitor"

tkgi_dnat_rule_name = "TKGI-API"
tkgi_api_private_ip = ["192.168.8.12"]
tkgi_public_ip      = ["10.0.0.36"]

harbor_dnat_rule_name = "HARBOR"
harbor_private_ip     = ["192.168.8.13"]
harbor_public_ip      = ["10.0.0.37"]
