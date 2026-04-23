# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "boundary_proxy_lb_dns_name" {
  value = module.boundary.proxy_lb_dns_name
}

output "boundary_worker_iam_role_name" {
  value       = module.boundary.boundary_worker_iam_role_name
  description = "ARN of the IAM role for Boundary Worker instances."
}

output "worker_security_group_id_ingress" {
  value       = module.boundary.worker_security_group_id_ingress
  description = "Security Group ID for ingress"
}

output "worker_security_group_id_egress" {
  value       = module.boundary.worker_security_group_id_egress
  description = "Security Group ID for egress"
}