resource "aws_instance" "demo_instance" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  tags = {
    Name = "tf_machine"
  }
  key_name               = "aws_key"
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install httpd -y",
      "sudo echo This is provisioner content index page > /var/www/html/index.html",
      "sudo systemctl restart httpd",
      "sudo systemctl enable httpd"
    ]
  }
  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file("/home/ruthra/keypair/aws_key")
    timeout     = "4m"
  }
}

#creating the new security group for this machine. Allow ssh (22)

resource "aws_security_group" "bastion_sg" {
  egress = [
    {
      cidr_blocks      = ["0.0.0.0/0"]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      protocol         = "-1"
      security_groups  = []
      prefix_list_ids  = []
      self             = "false"
      to_port          = 0
    }
  ]
  ingress = [
    {
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "This is opening the ssh (22) port"
      from_port        = "22"
      ipv6_cidr_blocks = []
      protocol         = "tcp"
      prefix_list_ids  = []
      security_groups  = []
      self             = "false"
      to_port          = "22"
    }
  ]
  tags = {
    Name = "bastion_sg"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws_key"
  public_key = "<Add Your full public key>"
  tags = {
    Name = "aws_key"
  }
}


