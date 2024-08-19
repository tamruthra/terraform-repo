resource "aws_instance" "demo_instance" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"
  tags          = var.project_environment
}
variable "project_environment" {
  type        = map(string)
  description = "Variable Declared for map with string)"
  default = {
    "Name"        = "tf_machine"
    "Project"     = "Demo_project"
    "Environment" = "Dev"
  }
}
