resource "aws_instance" "demo_instance" {
  ami                    = "ami-0a4408457f9a03be3"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0a40e8254fd4f343e"]
  count                  = var.count_instance
  tags = {
    name = "tf_instance"
  }
}

variable "count_instance" {
  type        = number
  description = "Variable declaration for number"
  default     = "2"
}
