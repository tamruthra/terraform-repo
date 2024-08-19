resource "aws_instance" "demo_instance" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  count         = length(var.instance_list)
  tags = {
    Name = var.instance_list[count.index]
  }
}
variable "instance_list" {
  type        = list(string)
  description = "Variable declaration for list with string"
  default     = ["tf1", "tf2", "tf3"]
}

