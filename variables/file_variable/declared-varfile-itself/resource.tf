resource "aws_instance" "tf_demo_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type[0] # check the variable.tf file
  vpc_security_group_ids = [var.vpc_security_group_ids.bastion]
  key_name               = var.key_name
  root_block_device {
    volume_size = var.volume_size
  }
  tags = {
    Name = "tf_demo_instance"
  }
  monitoring = var.monitoring
}