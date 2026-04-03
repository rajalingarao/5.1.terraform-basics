# ec2 variable
variable "image_id" {
  type = string # optional
  default = "ami-0220d79f3f480ecf5" # optional
  description ="RHEL image id" # optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string  
}
variable "tags" {
  default = {
    Project="Expense"
    Environment="Dev"
    Module ="DB"
    Name="ec2-variables"
  }
}

#security group variables
variable "sg_name" {
    type = string
    default = "allow_ssh_variables"
}

variable "sg_description" {
  type =  string
  default = "allowing port 22"
}

variable "ssh_port" {
    type = number
    default = 22  
}
variable "protocol" {
  type = string
  default = "tcp"
}

variable "allowed_cidr" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}
