terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

  }
}
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2ZFZX3LKIH5ZHG62"
  secret_key = "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"
}

resource "aws_eip" "test_ip_create" {
  vpc = true
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_sg"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.test_ip_create.public_ip}/32"]
  }
}
output "sg" {
  value =aws_security_group.allow_tls
}
output "eip" {
  value =aws_eip.test_ip_create
}
