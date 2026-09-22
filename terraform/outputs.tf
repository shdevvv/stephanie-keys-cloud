output "vpc_id" {
  description = "ID VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "ID Public Subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "ID Private Subnets"
  value       = aws_subnet.private[*].id
}
