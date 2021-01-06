nsx_hostname = "nsx.somelab.io"
nsx_user     = "admin"
nsx_password = ""

edge_cluster              = "edge-cluster-name"
overlay_tz                = "TZ-LAB-TKGI-Overlay"
vlan_tz                   = "TZ-LAB-TKGI-VLAN"
t0_gateway                = "T0-LAB-TKGI-ROUTER"
t0_gateway_interface_name = "UPLINK-TO-PYHSICAL"
t0_gateway_ip_addresses   = ["10.0.0.28/22"] # 10.0.0.0-10.0.3.255 (1024)
static_route_network_cidr = "0.0.0.0/0"
static_route_next_hop     = "10.0.0.1" # Gateway
t0_segment                = "UPLINKS"
vlan_ids                  = ["0"]

t1_gateway_infra      = "T1-LAB-TKGI-INFRA"
t1_gateway_infra_cidr = ["192.168.10.1/26"] # 192.168.10.0-192.168.10.63 (64)

t1_gateway_tkgi      = "T1-LAB-TKGI-SERVICE"
t1_gateway_tkgi_cidr = ["192.168.11.1/23"] # 192.168.11.0-192.168.12.255 (512)

snat_rule_name = "INTERNAL-TO-EXTERNAL"
snat_cidr      = ["192.168.0.0/16"] # Full Class C Private Network
snat_public_ip = ["10.0.0.29"]

opsmanager_dnat_rule_name = "OPSMANAGER"
opsmanager_public_ip      = ["10.0.0.30"]
opsmanager_private_ip     = ["192.168.10.10"] # T1-INFRA

tkgi_nodes_ip_block_name = "tkgi-nodes-ip-block" # 30 TKGI clusters, /24 per cluster (can use /20 for 16 clusters).
tkgi_nodes_ip_block_cidr = "192.168.64.0/19" # 192.168.64.0-192.168.95.255

tkgi_pods_ip_block_name = "tkgi-pods-ip-block" # Non-routable , 30 K8s namespaces, /24 per namespace
tkgi_pods_ip_block_cidr = "172.16.64.0/19" # 172.16.64.0-172.16.95.255

tkgi_snat_ip_pool_name        = "tkgi-floating-ip-pool" # .71-.100 = 30 K8s namespaces
tkgi_snat_ip_pool_range_start = "10.0.0.71"
tkgi_snat_ip_pool_range_end   = "10.0.0.100"
tkgi_snat_ip_pool_cidr        = "10.0.0.0/22"
tkgi_snat_ip_pool_gateway     = "10.0.0.1"

workload_lb_name = "workload-lb"
workload_lb_type = "SMALL" # SMALL | MEDIUM | LARGE | XLARGE | DLB

tkgi_dnat_rule_name = "TKGI-API"
tkgi_api_private_ip = ["192.168.11.10"] # T1-TKGI-SERVICE
tkgi_public_ip      = ["10.0.0.31"]

# Network CIDR Information
# ========================
# VTEP: GENEVE Tunnel Endpoints on NSX Transport Nodes, range for all expected host & edge transport nodes, e.g. 192.168.1.0/24
# TKGI-INFRA: Typically Ops Manager, BOSH, 5 temp BOSH workers, TKGI API VM, Harbor Registry, Minio, minimum /28 (15 usable ips), recommended /26
# TKGI-SERVICES: Load balancing address space for TKGI Kubernetes clusters, including the API and exposed services.

# Forbidden IP ranges
# ===================
# 10.100.200.0/24 (10.100.200.0-10.100.200.255)
# 172.17.0.0/16 (172.17.0.0-172.17.255.255)
