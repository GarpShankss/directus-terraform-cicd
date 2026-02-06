output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.directus_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance.directus_server.public_ip
}

output "directus_url" {
  description = "URL to access Directus"
  value       = "http://${aws_instance.directus_server.public_ip}:8055"
}

output "ssh_private_key" {
  description = "Private SSH key for server access"
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
}

output "ssh_connection_command" {
  description = "SSH command to connect to server"
  value       = "ssh -i ssh_key.pem ubuntu@${aws_instance.directus_server.public_ip}"
}