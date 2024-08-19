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
   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDA599ELSVX7/PEEOyhv7TjwCNvdwR0j/JyxqdgzwOBBVFjoghIQgd3chNI/WgLCaibDBOeSBseDKfi9mpRe0Pazc8S8fr3v3Tq1KGFgAqOPfIDXoVa4SHsbaOfyz7ykslDaTiF+Ji2pUizHt43gL8GtgKNuNcpK2ZlkNV5FrJcRQoENzo+nsyxspm076+cRXbrpzaDuP+tMLedmjfrK5yCrVHNi68Nnf0LpqX6iCyAu1wn3pInCT2VigRhJJXoYhdxoEezXu9NsUl/0r+XqCjvYBqEwhs2mUuarBf7G6BfkwuBkfFkhi8jsOhM2TJLchMEbv6p/iS3fv/pV1PKbvTaxydqkoATOil6ZiTN3F5WCaDG/uKxipNz/4OLhjRIS4LRXNdYLCGkDBcNMo+iMwvMdO+1CrE6d1RxwAyI6mQRqOwNW891Ble/csLu7/8eMPTujeHkNPDhgGqnp/vZd6PvoJBRZtgBcBcJ3gv5FQd+Z9DzG/n+I1W1mEcipUs1FiE= ruthra@DESKTOP-61O30OL"
}
