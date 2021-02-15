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

}

resource "aws_instance" "app" {
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = "ami-0c55b159cbfafe1f0"

  user_data = <<-EOF
              #!/bin/bash
              sudo service apache2 start
              EOF
}

