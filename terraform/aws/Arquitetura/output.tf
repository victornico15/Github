#https://developer.hashicorp.com/terraform/language/values/outputs

# output variavel 



output "instance_ip_addr" {
  value       = aws_instance.server.private_ip
  description = "The private IP address of the main server instance."
}



