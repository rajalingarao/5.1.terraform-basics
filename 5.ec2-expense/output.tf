# output "instance_type" {
#    value = aws_instance.expense
# }

output "instance_full_details" {
  value = [
    for i in aws_instance.expense : {
      name       = i.tags["Name"]
      private_ip = i.private_ip
      public_ip  = i.public_ip
      dns        = "${i.tags["Name"]}.${var.domain_name}"
    }
  ]
}