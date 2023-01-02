locals {
  ami = "ami-074dc0a6f6c764218"
}

resource "aws_instance" "ec2" {
  ami           = local.ami
  instance_type = var.instance_type
  tags          = var.tags
}

output "ec2-public-ip" {
  value = aws_instance.ec2.public_ip
}
