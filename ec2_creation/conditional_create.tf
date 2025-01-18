provider "aws" {
  region = "ap-south-1"
}

variable "instance_count" {
  default = true
}

resource "aws_instance" "Test_Instance_1" {
  ami = "ami-053b12d3152c0cc71"
  count = var.instance_count ? 2 : 0
  instance_type = "t2.micro"

}