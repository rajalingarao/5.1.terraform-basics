# ec2 variable
variable "instance_names" {
  type =  list
  default = ["DB server", "Backend Server", "Frontend Server" ]
}
