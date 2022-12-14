provider "aws" {
  region = "us-east-1"
}

variable "key_name" {default="my-key"}
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "generated_key" {
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.example.public_key_openssh}"
}
resource "aws_instance" "example" {
  ami           = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  key_name      = "my-key"

  tags = {
    Name = "My EC2 Instance"
  }
}
