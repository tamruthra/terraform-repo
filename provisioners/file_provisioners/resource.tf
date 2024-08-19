resource "aws_instance" "demo_instance" {
  ami = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name = "aws_key"
  tags = {
    Name = "Bastion-Server"
  }
  provisioner "file" {
    source = "/home/ruthra/testing_file.txt"
    destination = "/home/ec2-user/testing_file.txt"
  }
  connection {
    type = "ssh"
    host = self.public_ip
    user = "ec2-user"
    private_key = file("/home/ruthra/keypair/aws_key")
    timeout = "4m"
  }
}

resource "aws_security_group" "bastion_sg" {
  egress = [
    {
     cidr_blocks = ["0.0.0.0/0"]
     description = ""
     from_port = 0
     ipv6_cidr_blocks = []
     protocol = "-1"
     prefix_list_ids = []
     security_groups = []
     self = "false"
     to_port = 0 
     }
   ]
  ingress = [
    {
     cidr_blocks = ["0.0.0.0/0"]
     description = "ssh port opening for bastion_sg"
     from_port = "22"
     ipv6_cidr_blocks = []
     protocol = "tcp"
     prefix_list_ids = []
     security_groups = []
     self = "false"
     to_port = "22"
     }
  ]
  tags = {
    Name = "bastion_sg"
  }
}
resource "aws_key_pair" "deployer" {
   key_name = "aws_key"
   public_key = "<Your Public key"
}
