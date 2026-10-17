output "jump_server_public_ip" {
  value = aws_instance.jump_server.public_ip
}

output "application_server_private_ip" {
  value = aws_instance.application_server.private_ip
}

output "database_server_private_ip" {
  value = aws_instance.database_server.private_ip
}
