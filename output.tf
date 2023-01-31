output "instance_id" {
  description = "ID of the newly created instance"
  value       = aws_instance.ec2_example.id
}

output "instance_public_ip" {
  description = "publicly accessible ip address as an output"
  value       = aws_instance.ec2_example.public_ip
}
