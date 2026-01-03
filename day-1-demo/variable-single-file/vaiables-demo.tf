
variable "var_ami" {

    type = string
    description = "ami value"
    default = "ami-020cba7c55df1f615"
}

variable "var_instance_type" {

    type = string
    description = "instance_type value"
    default = "t2.micro"
}

provider "aws" {
  
    region = "us-east-1"
}

resource "aws_instance" "var-ec2" {

    ami = var.var_ami
    instance_type = var.var_instance_type
    
}
resource "aws_instance" "var-ec2-1" {

    ami = var.var_ami
    instance_type = var.var_instance_type
    
}

output "ot_public_ip" {

    description = "Public IP of EC2"
    value = aws_instance.var-ec2.public_ip
}

output "ot_public_ip-1" {

    description = "Public IP of EC2"
    value = aws_instance.var-ec2-1.public_ip
}
