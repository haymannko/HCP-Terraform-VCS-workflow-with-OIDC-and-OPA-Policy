
output "be_private_sg02_id" {
  description = "Backend private security group 02 ID"
  value       = aws_security_group.be_private_sg02.id
}

output "be_private_sg03_id" {
  description = "Backend private security group 03 ID"
  value       = aws_security_group.be_private_sg03.id
}


output "be_private_sg01_id" {
  description = "Backend private security group 01 ID"
  value       = aws_security_group.be_private_sg01.id

}

output "be_public_sg01_id" {
  description = "Backend public security group 01 ID"
  value       = aws_security_group.be_public_sg01.id

}
