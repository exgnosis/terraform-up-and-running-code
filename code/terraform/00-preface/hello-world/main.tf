terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" # gets the executable code
      version = "~>2.0"   # Allow any 2.x version of the AWS provider
    }
  }
  required_version = ">=0.14"
}

provider "aws" {
  region = "us-east-2"
  # if using a profile, add here
}



resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

