output "backend_vpc_id" {
  description = "Backend VPC ID"
  value       = aws_vpc.backend_vpc.id
}

output "private_route_table_ids" {
  description = "Backend private route table IDs"
  value = [
    aws_route_table.backend_private_rtb01.id,
    aws_route_table.backend_private_rtb02.id,
    aws_route_table.backend_private_rtb03.id
  ]
}

output "vpc_cidr_block" {
  value = aws_vpc.backend_vpc.cidr_block
}

output "backend_private_rtb02" {
  value = aws_route_table.backend_private_rtb02.id
}

output "backend_private_rtb03" {
  value = aws_route_table.backend_private_rtb03.id
}


output "backend_public_subnet01" {
  value = aws_subnet.backend_public_subnet01.id
}

output "backend_public_subnet02" {
  value = aws_subnet.backend_public_subnet02.id
}

output "backend_public_subnet03" {
  value = aws_subnet.backend_public_subnet03.id
}

output "backend_private_subnet01" {
  value = aws_subnet.backend_private_subnet01.id
}

output "backend_private_subnet02" {
  value = aws_subnet.backend_private_subnet02.id
}

output "backend_private_subnet03" {
  value = aws_subnet.backend_private_subnet03.id
}
