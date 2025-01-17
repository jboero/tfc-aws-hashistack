output "cluster_private_ips" {
  value = aws_instance.server.*.private_ip
}

output "cluster_public_ips" {
  value = aws_instance.server[*].public_ip
}

output "nomad_client_private_ips" {
  value = aws_instance.client.*.private_ip
}

output "nomad_client_public_ips" {
  value = aws_instance.client[*].public_ip
}

output "tfe_pub_ip" {
  value = aws_instance.tfe[*].public_ip
}

output "tfe_prv_ip" {
  value = aws_instance.tfe[*].private_ip
}

output "cluster_server_count" {
  value = local.server_count
}

output "tfe_enc_password" {
  value = var.terraform_enabled ? local.tfe_enc_password : ""
}

output "tfe_auth_passord" {
  value = var.terraform_enabled ? local.tfe_auth_password : ""
}