*  worked on terraform default values and terraform.tfvars.


# What is terraform variables/arguments preference selection?
Preference of arguments selection in Terraform
1. command line arguments
2. tfvars file values
3. ENVIRONMENT Variables
4. Variable Default value


Terraform variable selection priority:
1.	Command line (-var or -var-file)
Example: terraform apply -var="instance_type=t2.micro"
2.	.tfvars file
Example: terraform apply -var-file="config.tfvars"
3.	Environment variable (TF_VAR_*)
Example: export TF_VAR_instance_type="t2.micro"
4.	Default values in configuration
Example: variable "instance_type" { default = "t2.small" }
Order: Command line > .tfvars > Environment variables > Default values.




