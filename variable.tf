variable "region" {
    default = "ap-south-1"
    type = string
    description = "The AWS region for the test VM is ap-south-1j"
}
variable "instance_type" {
    default = "t2.micro"
    type = string
    description = "The AWS Instane type for the VMs"
}
variable "key_name" {
    default = "terraformkeypair"
    type = string
    description = "The AWS instance key name for the VMs"
}

