terraform {
  # 테라폼 버전 지정latest version = 1.3.x
  required_version = ">=1.0.0, <2.0.0"

  # 공급자 버전 지정
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0ab04b3ccbadfae1f" # Ubuntu 20.04 version
  instance_type = "t2.micro"
  key_name = "aws08-key"

  tags = {
    Name = "aws08-terraform-example"
  }
}

