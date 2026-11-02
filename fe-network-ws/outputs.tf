output "frontend_vpc_id" {
  description = "Frontend VPC ID"
  value       = aws_vpc.frontend_vpc.id
}

output "private_route_table_ids" {
  description = "frontend private route table IDs"
  value = [
    aws_route_table.frontend_private_rtb01.id,
    aws_route_table.frontend_private_rtb02.id,
    aws_route_table.frontend_private_rtb03.id
  ]
}

output "vpc_cidr_block" {
  value = aws_vpc.frontend_vpc.cidr_block
}

output "frontend_private_rtb02" {
  value = aws_route_table.frontend_private_rtb02.id
}

output "frontend_private_rtb03" {
  value = aws_route_table.frontend_private_rtb03.id
}

output "frontend_public_subnet01" {
  value = aws_subnet.frontend_public_subnet01.id
}

output "frontend_public_subnet02" {
  value = aws_subnet.frontend_public_subnet02.id
}

output "frontend_public_subnet03" {
  value = aws_subnet.frontend_public_subnet03.id
}

output "frontend_private_subnet01" {
  value = aws_subnet.frontend_private_subnet01.id
}

output "frontend_private_subnet02" {
  value = aws_subnet.frontend_private_subnet02.id
}

output "frontend_private_subnet03" {
  value = aws_subnet.frontend_private_subnet03.id
}
