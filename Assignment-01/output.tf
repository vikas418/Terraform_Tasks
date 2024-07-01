#########################################################
#                     Output                            #
#########################################################


output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.ninja-vpc.id
}


output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = [for subnet in aws_subnet.public_subnets : subnet.id]
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = [for subnet in aws_subnet.private_subnets : subnet.id]
}


output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.myigw.id
}


output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.mynat.id
}


output "public_route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public_route_table.id
}

output "private_route_table_id" {
  description = "The ID of the private route table"
  value       = aws_route_table.private_route_table.id
}

output "bastion_server_public_ip" {
  description = "The public IP address of the bastion server"
  value       = aws_instance.bastion-server.public_ip
}


output "private_instance_id" {
  description = "The ID of the private instance"
  value       = aws_instance.private_instance.id
}
