# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

#------------------------------------------------------------------------------
# Boundary URLs
#------------------------------------------------------------------------------
output "proxy_lb_dns_name" {
  value       = try(aws_lb.proxy[0].dns_name, null)
  description = "DNS name of the Load Balancer."
}

#------------------------------------------------------------------------------
# IAM
#------------------------------------------------------------------------------
output "boundary_worker_iam_role_name" {
  value       = try(aws_iam_role.boundary_ec2[0].name, null)
  description = "Name of the IAM role for Boundary Worker instances."
}

output "worker_security_group_id_ingress" {
  value       = aws_security_group.ec2_allow_ingress.id
  description = "Security Group ID for ingress"
}

output "worker_security_group_id_egress" {
  value       = aws_security_group.ec2_allow_egress.id
  description = "Security Group ID for egress"
}