# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}