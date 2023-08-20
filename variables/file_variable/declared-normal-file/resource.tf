resource "aws_instance" "tf_demo_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  root_block_device {
    volume_size = var.volume_size
  }
  key_name = "login-keypair"
  tags = {
    Name = "tf_demo_instance"
  }
}