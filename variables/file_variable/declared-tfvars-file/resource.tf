resource "aws_instance" "tf_demo_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = "login-keypair"
  root_block_device {
    volume_size = var.volume_size
  }
  tags = {
    Name = "tf_demo_instance"
  }

}