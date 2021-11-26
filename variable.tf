variable "region" {
    default = "ap-south-1"
    type = string
    description = "The AWS region"
}
variable "instance_type" {
    default = "t2.micro"
    type = string
    description = "The AWS Instane type"
}
variable "key_name" {
    default = "terraformkeypair"
    type = string
    description = "The AWS instance key name"
}

