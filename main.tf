provider "aws" {
  region = "us-west-2"
}

data "aws_ami" "instance_ami" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-kinetic-22.10-amd64-server-20221101"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.instance_ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "SNOWManagedInstance"
  }
}