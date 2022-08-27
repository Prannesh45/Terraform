provider "aws" {
  region     = "us-west-2"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-KEY"
}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb.public_ip
}

resource "aws_s3_bucket" "mys3" {
  bucket = "prannesh-demo"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3.bucket
}
