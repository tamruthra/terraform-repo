resource "aws_instance" "bastion_instance" {
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = "us-west-2a"
  key_name          = "login-keypair"
  tags = {
    Name = "env_var_testing"
  }
  root_block_device {
    volume_size = 20
  }
}