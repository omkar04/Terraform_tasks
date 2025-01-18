provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Test_instances" {
  ami = "ami-053b12d3152c0cc71"
  count = 5
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-00f57df5ae778dccf"]
  tags = {
    Name = "Test_Instance_${count.index}"
  }
}