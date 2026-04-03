output "public_ip" {
    value = aws_instance.create_ec2.public_ip
}
output "private_ip" {
    value = aws_instance.create_ec2.private_ip
}
output "security_group" {
    value = aws_instance.create_ec2.vpc_security_group_ids
}
output "ami_id" {
    value = aws_instance.create_ec2.ami
}
output "subnet_id" {
    value = aws_instance.create_ec2.subnet_id
}

