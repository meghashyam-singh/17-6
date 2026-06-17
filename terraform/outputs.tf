output "vpc_id" {
    value = aws_vpc.roboshop_vpc.id
}

output "igw_id" {
    value = aws_internet_gateway.roboshop_igw.id
}

output "public_subnet_id" {
    value = aws_subnet.public[*].id
}

output "private_subnet_id" {
    value = aws_subnet.private[*].id
}

output "database_subnet_id" {
    value = aws_subnet.database[*].id
}

output "nat_gateway_id" {
    value = aws_nat_gateway.nat.id
}

output "sg_id" {
    value = aws_security_group.roboshop_sg[*].id
}