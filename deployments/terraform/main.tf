provider "aws" {}
resource "aws_instance" "jenkins" {
  ami           = "$${var.aws_ami_id}"
  instance_type = "t2.micro"
  tags = {
    Name = "$${var.aws_instance_name}"
  }
}

