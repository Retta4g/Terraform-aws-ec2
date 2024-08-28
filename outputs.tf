output "public_ip" {
  description = "The public IP address of the instance"
  value       = aws_elastic_ip.eip.public_ip
}
