resource "aws_instance" "data-source-ec2" {
   
    ami  = data.aws_ami.ami_info.id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-088bbd993cbc52b59"]
    tags = {
         Name = "Data Source - EC2"
    }
  }