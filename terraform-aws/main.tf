terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {

    bucket = "smart-devops-terraform-state-ajity"

    key = "dev/ec2/terraform.tfstate"

    region = "ap-south-1"

    dynamodb_table = "terraform-state-locks"

    encrypt = true
  }
}

provider "aws" {
  region = var.aws_region
}


resource "aws_security_group" "terraform_sg" {

  name = "terraform-sg"

  dynamic "ingress" {

    for_each = local.ingress_ports

    content {

      from_port = ingress.value
      to_port   = ingress.value
      protocol  = "tcp"

      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }
}

module "ec2_instance" {

  source = "./modules/ec2"

  ami_id = "ami-03f4878755434977f"

  instance_type = "t3.micro"

  key_name = "devops-key1"

  security_group_id = aws_security_group.terraform_sg.id
}

locals {
  ingress_ports = [22, 80, 8080]
}