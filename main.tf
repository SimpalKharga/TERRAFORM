terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.33.0"
        }
    }
}

provider "aws" {
    # configuration options
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["137112412989"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

output "test" {
  value = data.aws_ami.amazon_linux.id  # Corrected reference to the data source
}

resource "aws_instance" "terraform_inst" {
  ami           = data.aws_ami.amazon_linux.id  # Corrected reference to the data source
  instance_type = var.INST_TYPE
  tags = {
    Name = var.EC2_TAG
  }
}

resource "aws_security_group" "sim_terra_sg" {
    name = var.SG_NAME
   
dynamic "egress" {
    for_each = var.sg_ports
    iterator = InPort
    content {
        from_port  = InPort.value
        to_port    = InPort.value
        protocol   = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
  }
}

