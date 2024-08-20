output "vpc_id" {
  value = aws_vpc.main.id
  description = "VPC Id"
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
  description = "VPC cidr notation"
}

output "availability_zone_names" {
  value = data.aws_availability_zones.available.names
  description = "Names of availabilty zones in the current region"
}


output "public_subnet_cidr_block" {
  value = aws_subnet.public_subnet[*].id
  description ="Public subnets Ids"
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet[*].id
  description = "Private subnets Ids"
}

output "internet_gateway_id" {
  value = aws_internet_gateway.internet_gateway.id
  description = "Internet gateway Id"
}

output "eip_allocation_id" {
  value = aws_eip.eip.allocation_id
  description = "Elastic IP allocation Id"
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gateway.id
  description = "NAT gateway Id"
}

output "public_route_table_id" {
  value = aws_route_table.public_route_table.id
  description = "Public route table Id"
}

output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
  description = "Private route table Id"
}

output "security_group" {
  value = aws_security_group.security_group.id
  description = "Security group Id"
}