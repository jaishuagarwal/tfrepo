resource "aws_instance" "myec2" {
    ami = "ami-079db87dc4c10ac91"
    #instance_type = "t2.micro"
    instance_type = var.instance_type    # Setting variable for "instance_type".
    tags = {
      creater = "terraform"
    }
}

variable "instance_type" {
    default = "t2.micro"
}