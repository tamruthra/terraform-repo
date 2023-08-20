resource "aws_instance" "tf-instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = ["sg-02682acf23a543aa5"]
  key_name               = "login-keypair"
  tags = {
    Name = "tf-instance"
  }
  root_block_device {
    volume_size = 10
  }

}