locals {
  stage_env     = "stage"
  instance_type = "t2.micro"
}
resource "aws_vpc" "stage-vpc" {
  cidr_block = "10.5.0.0/16"
  tags = {
    Name = "${local.stage_env}-vpc-tag"
  }
}
resource "aws_subnet" "stage-subnet" {
  vpc_id     = aws_vpc.stage-vpc.id
  availability_zone = "ap-south-1a"
  cidr_block = "10.5.128.0/17"
  tags = {
    Name = "${local.stage_env}-subnet-tag"
  }
}
resource "aws_instance" "demo-instance" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = local.instance_type
  subnet_id = aws_subnet.stage-subnet.id
  tags = {
    Name = "${local.stage_env}-instance-tag"
  }
}
