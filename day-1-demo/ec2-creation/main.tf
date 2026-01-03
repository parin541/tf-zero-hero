provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example-ec2" {
  
    ami = "ami-020cba7c55df1f615"   # Assigned a specif AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0b3ba0e3bc45c465c"
    key_name = "aws-tf-key"

    tags = {
    Name = "ec2-demo"
  }
}



/*  single cloud provider and single region

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example-ec2" {
  
    ami = "ami-020cba7c55df1f615"   # Assigned a specif AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0b3ba0e3bc45c465c"
    key_name = "aws-tf-key"

    tags = {
    Name = "ec2-demo"
  }
}


*/



/*------ Multiple cloud region


provider "aws" {

  alias = "us-east-1"
  region = "us-east-1" 
}

provider "aws" {

  alias = "us-west-2"
  region = "us-west-2" 
}


resource "aws_instance" "ec2-us-east" {
  
    ami = "ami-020cba7c55df1f615"   # Assigned a specif AMI ID accoding to east region
    instance_type = "t2.micro"
    subnet_id = "subnet-0b3ba0e3bc45c465c"
    provider = aws.us-east-1
    tags = {
    Name = "ec2-us-east-1"
  }
}

resource "aws_instance" "ec2-us-west" { 
    ami = "ami-00f46ccd1cbfb363e"   # Assigned a specif AMI ID according to west region
    instance_type = "t2.micro"
    //subnet_id = "subnet-0b3ba0e3bc45c465c"
    provider = aws.us-west-2
    tags = {
    Name = "ec2-us-west-2"
  }
}

------ */


/* -------- Multi cloud  OR Hybrid Cloud


1. Create a providers.tf file in the root directory of your Terraform project.
2. In the providers.tf file, define the AWS and Azure providers. For example:


provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  subscription_id = "your-azure-subscription-id"
  client_id = "your-azure-client-id"
  client_secret = "your-azure-client-secret"
  tenant_id = "your-azure-tenant-id"
}


3. In your other Terraform configuration files, 
you can then use the aws and azurerm providers to create resources in AWS and Azure, respectively,

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}

resource "azurerm_virtual_machine" "example" {
  name = "example-vm"
  location = "eastus"
  size = "Standard_A1"
}


------*/



/*--------

Provider Configuration

The required_providers block in Terraform is used to declare and specify the required provider configurations for your Terraform module or configuration. It allows you to specify the provider name, source, and version constraints.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0, < 3.0"
    }
  }
}

---------*/
