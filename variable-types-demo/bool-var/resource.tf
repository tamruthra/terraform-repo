resource "aws_instance" "demo_instance" {
  ami                         = "ami-0a4408457f9a03be3"
  instance_type               = "t2.micro"
  associate_public_ip_address = var.associate_public_ip_address
  tags = {
    Name = "tf_instance"
  }
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Defining the Boolean variable"
  default     = "false"
}
