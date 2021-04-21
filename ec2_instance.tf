
resource "aws_instance" "new_ec2_assign_ip" {
  ami           = "ami-0518bb0e75d3619ca"
  count         = 1
  instance_type = lookup(var.instance_type,terraform.workspace)


}
