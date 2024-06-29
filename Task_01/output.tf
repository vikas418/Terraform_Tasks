output "vpc_id" {
  value       = aws_vpc.my_vpc.id
  description = "The ID of the VPC"
}

output "subnet_id" {
  value       = aws_subnet.my_subnet.id
  description = "The ID of the subnet"
}

output "instance_id" {
  value       = aws_instance.my_instance.id
  description = "The ID of the EC2 instance"
}
