resource "aws_instance" "remote_state_ec2" {
    ami  ="ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-088bbd993cbc52b59"]
    tags = {
      Name ="Helloworld - Remote State - ec2"
    }
    # root_block_device {
    #   volume_size = 50  
    #   volume_type = "gp3"
    #   iops =  3000
    #   encrypted = true    
    # }
  }