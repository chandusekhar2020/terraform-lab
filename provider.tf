terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.66.0"
    }
  }
  backend "s3" {
    bucket = "testbackendbucket"
    key = "terraform-statefile/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}