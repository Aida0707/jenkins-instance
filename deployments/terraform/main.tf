provider "aws" {}
resource "aws_instance" "jenkins" {
  ami           = "${aws_ami_id}"
  instance_type = "t2.micro"
  tags = {
    Name = "${aws_instance_name}"
  }
}

