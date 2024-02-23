provider "aws" {
  region     =  "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0440d3b780d96b29d"
    #instance_type = "t2.micro"
    instance_type = var.instance_type    # Setting variable for "instance_type".
    tags = {
      creater = "terraform"
    }
}

variable "instance_type" {
    default = "t2.micro"
}
