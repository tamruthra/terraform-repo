resource "aws_instance" "terraform_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = "awsruthra5_off"
  vpc_security_group_ids = var.security_group
  tags = {
    "Name" = "TF_Machine"

  }
}