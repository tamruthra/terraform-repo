resource "aws_instance" "tf_instance" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  for_each      = toset(var.ins_name)
  tags = {
    Name = each.key
  }
}

resource "aws_iam_user" "users_list" {
  for_each = toset(var.user_name)
  name     = each.value
}
