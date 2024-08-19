resource "aws_instance" "demo_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_group
  tags                   = var.tags
  root_block_device {
    volume_size = var.volume_size
  }
}
