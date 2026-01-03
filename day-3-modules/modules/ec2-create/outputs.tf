output "ot_public_ip" {
  
  description = "Public IP of EC2"
  value = aws_instance.ec2-tf-mod.public_ip
}