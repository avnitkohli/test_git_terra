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
