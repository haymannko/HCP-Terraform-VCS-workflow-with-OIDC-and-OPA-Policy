

output "fe-keypair-public" {
  value = aws_key_pair.fe_keypair.public_key
}

output "fe-keypair-private-filename" {
  value = local_sensitive_file.fe_private_key.filename
}
