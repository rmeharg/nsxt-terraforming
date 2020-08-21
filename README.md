NSX-T Terraform
---

## What does this repository provide?
Terraform scripts that prepares the NSX-T environment for deploying OSS Concourse, OpsManager and TKGI

## Pre-requisites:
* Use terraform > 0.12.xx
* Prepare the hosts
* Deploy the edges and edge cluster
* Fill in the details in `terraform.tfvars`

## What happens upon terraforming?

```
terraform init

terraform plan -out=nsx

terraform apply "nsx"
```

When the `apply` is executed, the following objects are created and tagged:

- 1 T0 Gateway

- 2 T1 Gateways
  - INFRASTRUCTURE (OpsManager)
  - TKGI

- 3 Segments (Switches)
  - INFRASTRUCTURE
  - TKGI
  - UPLINKS

- External IP Pool for
  - SNAT for TKGI

- NAT Rules
  - SNAT private CIDR's to external
  - DNAT to OpsManager VM
  - DNAT to TKGI API

- 1 Small load balancer
