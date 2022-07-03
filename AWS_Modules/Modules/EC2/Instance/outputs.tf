# Output data
output "instance_private_ip" {
  description = "Get the private IP of the instance"
  value       = aws_instance.instance.private_ip
}
