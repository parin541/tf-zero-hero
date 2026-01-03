provider "aws"  {
  
  region = "us-east-1"
}

module "ec2-creation" {
  
  source = "./modules/ec2-create"
  ami_value = "ami-068c0051b15cdb816"
  instance_type_value = "t2.micro"

}