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
variable "instance_name" {
    default = "db"  # "backend"
}

variable "tags" {
  default = {
    Project="Expense"
    Environment="Dev"
    Module ="DB"
    Name="ec2-conditions"
  }
}
