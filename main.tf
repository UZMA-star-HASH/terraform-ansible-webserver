provider "aws" {
  region     = "us-east-1"
  
}

resource "aws_instance" "ansible_master" {
  ami                    = "ami-04b4f1a9cf54c11d0"
  instance_type          = "t3.micro"
  key_name               = "AWS_
  user_data              = file("install_ansible.sh")
  tags = {
    Name = "Ansible-Master"
  }
}

resource "aws_instance" "slave1" {
  ami                    = "ami-04b4f1a9cf54c11d0"
  instance_type          = "t3.micro"
  key_name               = "AWS_key"
  tags = {
    Name = "Slave-1"
  }
}

resource "aws_instance" "slave2" {
  ami                    = "ami-04b4f1a9cf54c11d0"
  instance_type          = "t3.micro"
  key_name               = "AWS_key"
  tags = {
    Name = "Slave-2"
                                   
