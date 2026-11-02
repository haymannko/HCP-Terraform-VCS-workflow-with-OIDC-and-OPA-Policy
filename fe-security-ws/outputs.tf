
output "fe_private_sg02_id" {
  description = "Frontend private security group 02 ID"
  value       = aws_security_group.fe_private_sg02.id
}

output "fe_private_sg03_id" {
  description = "Frontend private security group 03 ID"
  value       = aws_security_group.fe_private_sg03.id

}

output "fe_private_sg01_id" {
  description = "Frontend private security group 01 ID"
  value       = aws_security_group.fe_private_sg01.id

}

output "fe_public_sg01_id" {
  description = "Frontend public security group 01 ID"
  value       = aws_security_group.fe_public_sg01.id

}
