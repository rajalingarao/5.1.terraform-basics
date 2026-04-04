output "vpc_id" {
  value = data.aws_vpc.default.id
}
output "vpc_owner_id" {
  value = data.aws_vpc.default.owner_id
}
output "public_id" {
  value = aws_instance.data-source-ec2.public_ip
  }
output "private_id" {
  value = aws_instance.data-source-ec2.private_ip
  }
output "security_group" {
    value = aws_instance.data-source-ec2.vpc_security_group_ids
}
output "ami_id" {
  value = aws_instance.data-source-ec2.ami
}
output "subnet_id" {
    value = aws_instance.data-source-ec2.subnet_id 
}