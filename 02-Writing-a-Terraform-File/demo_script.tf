# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }
# }


provider "aws" {
  region = "us-east-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-KEY"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0f9fc25dd2506cf6d"
  instance_type = "t2.micro"
}
