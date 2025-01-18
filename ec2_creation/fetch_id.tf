provider "aws" {
  region = "ap-south-1"
}

data "aws_instance" "fetch_ip" {
  instance_id = "i-0e4ecf776e765a059"
}

output "show_public_ip" {
  value = data.aws_instance.fetch_ip.public_ip
}