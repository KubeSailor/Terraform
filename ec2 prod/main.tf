#terraform apply --var-file .\prod\prod.tfvars


provider "aws" {

  access_key = "${var.access}"

  secret_key = "${var.secret}"

  region     = "us-east-2"

}

resource "aws_instance" "murali" {

    ami = "${var.ami}"

    instance_type = "t2.micro"

    key_name = "${var.key_name}"

    monitoring = "false"

    security_groups = "${var.security}"



    tags = {

      Name = "satya"

    }

}

