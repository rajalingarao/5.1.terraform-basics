resource "aws_instance" "create_ec2" {
    ami  =  var.image_id
    instance_type = var.instance_name =="db" ? "t3.small":"t3.micro"
   
    tags = var.tags
    # root_block_device {
    #   volume_size = 50  
    #   volume_type = "gp3"
    #   iops =  3000
    #   encrypted = true    
    # }
  }
