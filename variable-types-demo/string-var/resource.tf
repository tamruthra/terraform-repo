resource "aws_instance" "demo_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "demo_instance"
  }
}

variable "ami" {
  type        = string
  description = "This is string variable declaration"
  default     = "ami-0a4408457f9a03be3"
}

variable "instance_type" {
  type        = string
  description = "This is string variable declaration"
  default     = "t2.micro"
}
