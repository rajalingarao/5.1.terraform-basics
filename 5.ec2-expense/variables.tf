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

variable "instance_names" {
  type =  list
  default = ["db", "backend", "frontend" ]
}

variable "common_tags" {
  default = {
    Project="Expense"
    Environment="Dev"
    Terraform = "true"
    Name="expense-ec2"
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

# route53 record variables
variable "zone_id" {
  default = "Z012785114HGZTDQ8KSQH"  
}
variable "domain_name" {
   default = "lithesh.shop"
}