locals {
    ami_id = "ami-0220d79f3f480ecf5"
    sg_id = "sg-088bbd993cbc52b59"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    tags = {
        Name = "locals - ec2 instance"
    }
}