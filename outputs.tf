output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "ec2_instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.main.id
}

output "ec2_public_ip" {
  description = "Public IP address of EC2"
  value       = aws_instance.main.public_ip
}
