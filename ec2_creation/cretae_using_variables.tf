variable "region" {
  default = "ap-south-1"
}
variable "instance_type" {
  default = "t2.micro"
}
provider "aws" {
  region = var.region
}

resource "aws_instance" "Test_instances" {
  ami = "ami-053b12d3152c0cc71"
  instance_type = var.instance_type
}