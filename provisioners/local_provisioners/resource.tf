resource "aws_instance" "demo_instance" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  tags = {
    Name = "tf_instance"
  }
  provisioner "local-exec" {
    command = "echo This is testing file > test_file.txt"

  }
}
