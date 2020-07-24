provider "aws" {}
resource "aws_instance" "jenkins" {
  ami           = "${aws_ami_id}"
  instance_type = "t2.micro"
  tags = {
    Name = "${aws_instance_name}"
  }
}

aws_ami_id = "ami-08f3d892de259504d"
aws_instance_name = "Jenkins"