provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
data "aws_vpc" "default" {
    default = true
}

data "aws_security_group" "default" {
  name = "default"
  vpc_id = data.aws_vpc.default.id
}

resource "aws_instance" "Frountend_server" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [data.aws_security_group.default.id]
   tags = {
     Name = "Frountend_server"
   }
}
