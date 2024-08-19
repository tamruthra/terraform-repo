resource "aws_iam_user" "test_user" {
  count = length(var.test_user)
  name  = var.test_user[count.index]
}

resource "aws_instance" "demo_instance" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  count         = "2"
  tags = {
    Name = "tf_machine-${count.index}"
  }
}

