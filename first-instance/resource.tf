resource "aws_instance" "first_instance" {
  ami                    = "ami-04e35eeae7a7c5883"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0dc79a3e4eaa001ca"]
  availability_zone      = "us-west-2a"
  key_name = "login-keypair"
  root_block_device {
    volume_size = 20
  }
  tags = {
    Name = "first_instance"
  }

}