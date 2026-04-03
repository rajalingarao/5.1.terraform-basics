resource "aws_instance" "create_ec2" {
    ami  ="ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags = {
      Name ="Helloworld - create ec2 instance"
    }
    # root_block_device {
    #   volume_size = 50  
    #   volume_type = "gp3"
    #   iops =  3000
    #   encrypted = true    
    # }
  }

  resource "aws_security_group" "allow_ssh" {
    name ="Allow SSH"
    description = "Allowing SSH Access"
    ingress {
        from_port  = 22
        to_port    = 22
        protocol   = "tcp" # Transmission Control Protocol
        cidr_blocks  = ["0.0.0.0/0"] # Classless Inter-Domain Routing
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      Name  = "allow_ssh"
      Created-By = "Lingaiah"
    }  
  }