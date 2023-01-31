provider "aws" {
  region     = var.aws_region
} 

terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.52"
    }
  }
}

resource "aws_instance" "ec2_example" {

   ami           = data.aws_ami.amazon_linux.id
   instance_type = var.instance_type  
   subnet_id     = var.subnet_id
   vpc_id        = var.vpc_id
   vpc_security_group_ids = [aws_security_group.example.id]

   tags = {
     Name = "ec2_example"
   }
   key_name      = var.key_name
   connection {
     type        = "ssh"
     user        = "ec2-user"
     private_key = file("~/.ssh/id_rsa")
   }

resource "aws_security_group" "example" {
  name        = "example"
  description = "Allow SSH access"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

