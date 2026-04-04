resource "aws_instance" "expense_for_each" {

    for_each = var.instance_names # each.key and each.value, db = "t3.small"
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-088bbd993cbc52b59"]
    instance_type = each.value  # db = "t3.small" each.key = each.value
    tags = merge(
            var.common_tags,  
            {
              Name = each.key
              Module = each.key
            }
    )
    # root_block_device {
    #   volume_size = 50  
    #   volume_type = "gp3"
    #   iops =  3000
    #   encrypted = true    
    # }
  }      