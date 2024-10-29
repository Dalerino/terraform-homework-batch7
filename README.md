# terraform-homework-batch7

Using tfvars Files with Terraform, this document provides guidelines on how to use tfvars files with Terraform to manage configuration variables.

What is a tfvars File? A tfvars file in Terraform is used to set input variables to specific values when executing Terraform commands. This allows you to customize configurations without modifying the main Terraform configuration files.

Prerequisites
Ensure that you have four separate .tfvars files for the respective regions: - virginia.tfvars - ohio.tfvars - california.tfvars - oregon.tf vars

Each .tfvars file should be configured correctly with the following example format: region = "" az = "" ami_id = "" You can find this information in AWS Management Console.

Usage
To apply and destroy the Terraform configurations for each region, use the following commands: - terafform apply -var-file virginia.tfvars - terafform destroy -var-file virginia.tfvars Repeat for each region by substituting with the region-specific .tfvars file.

Key points to remember:
.tfvars files will override any variables defined in the main variable file. If the same variables are present in both, the values from the .tfvars file will take precedence
After running "terraform apply -var-file .tfvars", always run "terraform destroy -var-file .tfvars" to clean up the resources you created.
Failing to destroy resources can lead to manual cleanup, as Terraform apparently does not automatically manage state changes across regions.
Running "terraform apply -var-file .tfvars" in another region will override your "terraform.tfstate file", which can result in Terraform being unable to manage the previously deployed resources.