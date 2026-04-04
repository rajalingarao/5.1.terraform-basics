resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami  =  var.image_id
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags = merge(
            var.common_tags,  
            {
              Name = var.instance_names[count.index]
              Module = var.instance_names[count.index]
            }
    )
    # root_block_device {
    #   volume_size = 50  
    #   volume_type = "gp3"
    #   iops =  3000
    #   encrypted = true    
    # }
  }

  resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description
    ingress {
        from_port    = var.ssh_port
        to_port      = var.ssh_port
        protocol     = var.protocol
        cidr_blocks  = var.allowed_cidr
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = var.allowed_cidr
    }
    tags = {
      Name  = "allow_ssh"
      Created-By = "Lingaiah"
    }  
  }