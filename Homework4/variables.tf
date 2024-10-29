variable "region" {
    type = string
    default = "us-east-2"
}

variable "key_name" {
    type = string
    default = "Bastion-key"
}

variable "port" {
    type = list
    default = [22,80,443]
}

variable "az" {
    type = string
    default = "us-east-2a"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    type = string
    default = "ami-050cd642fd83388e4"
}

variable "instance_count" {
    type = number
    default = 1
}

