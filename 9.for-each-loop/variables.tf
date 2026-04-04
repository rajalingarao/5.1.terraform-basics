variable "instance_names" {
  type =  map
  default  = {
    db = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}
variable "common_tags" {
  type = map
  default = {
    Project="Expense"
    Terraform = "true"
  }
}
# route53 record variables
variable "zone_id" {
  default = "Z012785114HGZTDQ8KSQH"  
}
variable "domain_name" {
   default = "lithesh.shop"
}